<!--
 * @Autor: dingxiaolin
 * @Date: 2020-05-07 22:50:01
 * @LastEditors: dingxiaolin
 * @LastEditTime: 2020-05-22 07:02:40
--> 
<template>
  <div class="hello">
    <h1>first</h1>
    <h2 @click="linkRouter('/first')">{{ msg1 }}</h2>
    <h2 @click="linkRouter('/second')">{{ msg2 }}</h2>
    <h2 @click="linkRouter('/third')">{{ msg3 }}</h2>
    <h2 @click="linkFourth('/fourth','123456')">{{ msg4 }}</h2>
    <h2 @click="linkRouter('/userCenter/userFirst')">{{ msg5 }}</h2>
  </div>
</template>

<script>
import VueMetaInfo from "../assets/vue-meta-info.js";
export default {
  name: "HelloWorld",
  metaInfo: VueMetaInfo.first,
  data() {
    return {
      msg1: "Welcome to first",
      msg2: "Welcome to second",
      msg3: "Welcome to third",
      msg4: "URL参数传递",
      msg5: "复用路由"
    };
  },
  methods: {
    linkRouter(path) {
      this.$router.push({ path: path });
    },
    linkFourth(path, id) {
      this.$router.push({ path: path, query: { id } });
    }
  },
  created() {
    console.log("process.env.NAME", process.env.NAME);
    console.log("TZ", process.env.TZ);
  },
  mounted() {
    console.log("process.env.NAME", process.env.NAME);
    console.log("TZ", process.env.TZ);
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1 {
  font-weight: normal;
}
h2 {
  font-weight: normal;
  font-size: 14px;
  color: #2c3e50;
}
</style>
