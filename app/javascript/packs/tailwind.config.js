const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: ["./app/helpers/**/*.rb", "./app/javascript/packs/*.{js,vue}", "./app/views/**/*.{erb,haml,html,slim}"],
  purge: [],
  darkMode: false,
  theme: {
    screens: {
      'xs': '500px',
      ...defaultTheme.screens,
    },
    extend: {
      fontFamily: {
        zenmaru: ['Zen Maru Gothic', 'sans-serif'],
        sawarabi: ['Sawarabi Mincho', 'serif'],
        mplus: ['M PLUS 1p', 'sans-serif'],
        kosugi: ['Kosugi Maru', 'sans-serif'],
        udpmincho: ['BIZ UDPMincho', 'serif'],
      },
      height: {
        '15': '3.75rem',
      },
      colors: {
        stone50: '#fafaf9',
        stone500: '#78716c',
        stone600: '#57534e',
        zinc200: '#e4e4e7',
        zinc300: '#d4d4d8',
        blackpanther: '#332627',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/line-clamp'),
  ],
}