import defaultTheme from 'tailwindcss/defaultTheme';
import forms from '@tailwindcss/forms';

/** @type {import('tailwindcss').Config} */
export default {
    darkMode: 'class',
    content: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
        "./node_modules/flowbite/**/*.js"
    ],

    theme: {
        extend: {
            colors: {
                'primary': {
                    '50': '#f4f7fb',
                    '100': '#e7eef7',
                    '200': '#cadbed',
                    '300': '#9cbedd',
                    '400': '#679bc9',
                    '500': '#447fb3',
                    '600': '#336699',
                    '700': '#2a517a',
                    '800': '#264666',
                    '900': '#243c56',
                    '950': '#182739',
                },
            },
            fontFamily: {
                sans: ['Figtree', ...defaultTheme.fontFamily.sans],
            },
        },
    },

    plugins: [
        forms,
        require('flowbite/plugin')
    ],
};
