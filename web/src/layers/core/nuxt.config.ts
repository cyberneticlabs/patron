import tailwindcss from '@tailwindcss/vite'
import { resolve } from 'node:path'

export default defineNuxtConfig({
  modules: ['@nuxt/ui'],

  srcDir: 'app',

  css: [resolve(__dirname, 'app/assets/css/main.css')],

  vite: {
    plugins: [tailwindcss()]
  },

  colorMode: {
    preference: 'dark',
    fallback: 'dark',
    classSuffix: ''
  },

  future: {
    compatibilityVersion: 4
  },

  devServer: { port: 3000 }
})
