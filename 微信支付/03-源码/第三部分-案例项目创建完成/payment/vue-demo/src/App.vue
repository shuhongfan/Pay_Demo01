<!--定义页面结构-->
<template>
  <div>
    <h1>Vue案例</h1>
    <!-- 插值 -->
    <p>{{course}}</p>
    <p>
      <!-- 指令 -->
      <input type="text" v-model="course">
    </p>
    <p>
      <!-- 事件 -->
      <button @click="toPay()">去支付</button>
    </p>
  </div>
</template>

<!--定义页面脚本-->
<script>
export default {
  // 定义数据
  data () {
    return {
      course: '微信支付'
    }
  },

  // 定义方法
  methods: {
    toPay(){
      console.log('去支付')
    }
  }
}
</script>
