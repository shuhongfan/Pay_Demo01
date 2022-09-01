<!-- 定义页面结构 -->
<template>
  <div>
    <h1>Vue案例</h1>
    <!-- 插值表达式：数据绑定 -->
    {{course}} 
    <!-- 指令 -->
    <input type="text" v-model="course">
    <!-- 事件处理 -->
    <button @click="toPay">去支付</button>
  </div>
</template>

<!-- 定义页面脚本 -->
<script>
export default {
 
 data () {
   return {
     course: '微信支付'
   }
 },

 methods: {
   toPay(){
     console.log('去支付....')
   }
 }
}
</script>
