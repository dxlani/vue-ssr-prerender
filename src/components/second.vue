<!--
 * @Autor: dingxiaolin
 * @Date: 2020-04-29 23:14:33
 * @LastEditors: dingxiaolin
 * @LastEditTime: 2020-04-30 17:03:23
 -->
<template>
  <div class="hello">
    <h1>second</h1>
    <h2 @click="linkRouter('/first')">{{ msg1 }}</h2>
    <h2 @click="linkRouter('/second')">{{ msg2 }}</h2>
    <h2 @click="linkRouter('/third')">{{ msg3 }}</h2>
    <h2 @click="linkRouter('/fourth')">{{ msg4 }}</h2>
  </div>
</template>

<script>
import VueMetaInfo from "../assets/vue-meta-info.js";
export default {
  name: "HelloWorld",
  metaInfo: {
    title: "我是一个title[first]",
    meta: [
      {
        name: "keywords",
        content: "关键字1,关键字1,关键字1"
      },
      {
        name: "description",
        content: "这是一段网页的描述1"
      }
    ]
  },
  data() {
    return {
      msg1: "Welcome to first",
      msg2: "Welcome to second",
      msg3: "Welcome to third"
    };
  },
  methods: {
    linkRouter(path) {
      this.$router.push({ path: path });
    }
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
