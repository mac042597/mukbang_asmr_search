const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: ["./app/helpers/**/*.rb", "./app/javascript/packs/*.{js,vue}", "./app/views/**/*.{erb,haml,html,slim}"],
  purge: [],
  darkMode: false,
  theme: {
    extend: {
      fontFamily: {
        zenmaru: ['Zen Maru Gothic', 'sans-serif'],
        sawarabi: ['Sawarabi Mincho', 'serif'],
        mplus: ['M PLUS 1p', 'sans-serif'],
        kosugi: ['Kosugi Maru', 'sans-serif'],
      },
      height: {
        '15': '3.75rem',
      },
      colors: {
        stone300: '#d6d3d1',
        stone400: '#a8a29e',
        stone50: '#fafaf9',
        stone500: '#78716c',
        stone700: '#44403c',
        zinc300: '#d4d4d8',
        zinc400: '#a1a1aa',
        grayishwall: '#e3e6e1',
        simplegray: '#aeafaf',
        bluegray: '#b7c6c7',
        darkbluegray: '#4b5f65',
        warmgray: '#ceccb8',
        blackpanther: '#332627',
        calm: '#EEE9D4',
        applecrisp: '#BB9861',
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