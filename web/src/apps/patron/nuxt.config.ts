import { resolve } from 'node:path'
import { loadEnv } from 'vite'
import dotenv from 'dotenv'

const rootDir = resolve(__dirname, '../../..')

dotenv.config({ path: resolve(rootDir, '.env') })
const env = loadEnv('all', rootDir, '')

export default defineNuxtConfig({
  extends: ['../../layers/core', '../../layers/dashboard'],

  srcDir: 'app',

  vite: {
    devServer: {
      fs: { allow: [resolve(rootDir, 'node_modules')] }
    }
  },

  runtimeConfig: {
    apiKey: process.env.NUXT_API_KEY || env.NUXT_API_KEY || '',
    public: {
      siteUrl: process.env.NUXT_PUBLIC_SITE_URL || ''
    }
  },

  devServer: { port: 3000 }
})
