import tailwindcss from '@tailwindcss/vite'

export default defineNuxtConfig({
  modules: ['@nuxt/ui'],

  srcDir: 'app',

  vite: {
    plugins: [tailwindcss()]
  },

  colorMode: {
    preference: 'system',
    fallback: 'light',
    classSuffix: ''
  },

  future: {
    compatibilityVersion: 4
  },

  devServer: { port: 3000 }
})
