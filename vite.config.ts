import { defineConfig } from 'vite'
import { svelte } from '@sveltejs/vite-plugin-svelte'

// https://vite.dev/config/
export default defineConfig({
  plugins: [
    svelte(),
  ],
  build: {
    outDir: "dist",
    assetsDir: "assets",
    assetsInlineLimit: 51200
  },
  base: "/static/"
})
