/** @type {import('tailwindcss').Config} */
const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

export default {
  darkMode: "class",
  content: [
    "./resources/**/*.blade.php",
    "./resources/**/*.js",
    "./resources/**/*.vue",
    "./node_modules/flowbite/**/*.js",
    "./app/Helpers/PowerGridThemes/*.php",
    "./vendor/power-components/livewire-powergrid/resources/views/**/*.php",
    "./vendor/power-components/livewire-powergrid/src/Themes/Tailwind.php"
  ],
  presets: [
    require("./vendor/power-components/livewire-powergrid/tailwind.config.js"),
  ],
  theme: {
    extend: {
      zIndex: {
        '60': '60',
        '70': '70',
      },
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
        "pg-primary": colors.slate,
      },
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('flowbite/plugin')
  ],
}

