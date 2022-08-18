import { createApp } from 'vue'
import App from './application.vue'

document.addEventListener('DOMContentLoaded', () => {
  const selector = '#js-hello-vue';
  if(document.querySelector(selector)){
    createApp(App).mount(selector);
  }
})