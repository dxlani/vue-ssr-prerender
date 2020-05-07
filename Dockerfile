FROM dxlani/sino_front8

WORKDIR /app

COPY ./package.json /app/

RUN yum install libX11-devel --nogpg

RUN cnpm install --allow-root

COPY . /app/

RUN cnpm run build

RUN cp -R /app/dist/*  /usr/share/nginx/html

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezoness

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]