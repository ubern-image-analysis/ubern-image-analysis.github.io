import { mdsvex } from 'mdsvex';
import mdsvexConfig from './mdsvex.config.js';
import adapter from '@sveltejs/adapter-static';
import { vitePreprocess } from '@sveltejs/kit/vite';

/** @type {import('@sveltejs/kit').Config} */
const config = {
    extensions: ['.svelte', ...mdsvexConfig.extensions],

    preprocess: [vitePreprocess(), mdsvex(mdsvexConfig)],

    kit: {
        adapter: adapter(),
        paths: {
            base: process.env.BASE_PATH ?? ''
        },
        files: {
            assets: './src/static'
        },
        prerender: {
            handleHttpError: 'warn'
        }
    }
};

export default config;
