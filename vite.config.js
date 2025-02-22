import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from "@tailwindcss/vite"

export default defineConfig({
  plugins: [react(), tailwindcss()],
  base: "/personal-portfolio",
  server:{
    host: true,
    strictPort: true,
    port: 5173
  }
})

