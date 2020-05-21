/*
 * @Autor: dingxiaolin
 * @Date: 2020-05-07 22:50:01
 * @LastEditors: dingxiaolin
 * @LastEditTime: 2020-05-22 07:41:03
 */

// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from "vue";
import App from "./App";
import router from "./router";
import MetaInfo from "vue-meta-info";

Vue.config.productionTip = false;
Vue.use(MetaInfo);
/* eslint-disable no-new */
// new Vue({
//   el: '#app',
//   router,
//   components: { App },
//   template: '<App/>'
// })
console.log("process.env.NAME", process.env.NAME);
console.log("TZ", process.env.TZ);
new Vue({
  el: "#app",
  router,
  components: { App },
  template: "<App/>",
  // 添加mounted，不然不会执行预编译
  mounted() {
    document.dispatchEvent(new Event("render-event"));
  },
});
