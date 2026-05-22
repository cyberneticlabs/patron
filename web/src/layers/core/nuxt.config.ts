import tailwindcss from '@tailwindcss/vite'

export default defineNuxtConfig({
  modules: ['@nuxt/ui'],

  srcDir: 'app',

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
