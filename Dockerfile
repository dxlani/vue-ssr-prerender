FROM dxlani/sino_front8

WORKDIR /app

COPY ./package.json /app/

RUN cnpm install --allow-root

RUN cnpm install puppeteer
    # Add user so we don't need --no-sandbox.
    # same layer as npm install to keep re-chowned files from using up several hundred MBs more space
    # && groupadd -r pptruser && useradd -r -g pptruser -G audio,video pptruser \
    # && mkdir -p /home/pptruser/Downloads \
    # && chown -R pptruser:pptruser /home/pptruser \
    # && chown -R pptruser:pptruser /node_modules

COPY . /app/

RUN cnpm run build

RUN cp -R /app/dist/*  /usr/share/nginx/html

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezoness

EXPOSE 80

CMD ["nginx", "-g","google-chrome-unstable", "daemon off;"]