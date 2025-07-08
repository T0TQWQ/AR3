import { defineConfig } from 'vite';

export default defineConfig({
  base: '/AR2/',
  server: {
    host: '0.0.0.0',
    port: 3000,
    https: false,
    open: false,
    strictPort: true,
    hmr: {
      port: 3001,
      host: '0.0.0.0'
    }
  },
  build: {
    outDir: 'dist',
    assetsDir: 'assets',
    sourcemap: true,
    rollupOptions: {
      input: {
        main: './index.html'
      }
    },
    copyPublicDir: true
  },
  optimizeDeps: {
    include: ['three']
  },
  clearScreen: false,
  logLevel: 'info'
}); 