const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: ["./app/helpers/**/*.rb", "./app/javascript/packs/*.{js,vue}", "./app/views/**/*.{erb,haml,html,slim}"],
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}