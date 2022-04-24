const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './app/components/atoms/**/*.{erb,haml,html,slim,rb}',
    './app/components/forms/**/*.{erb,haml,html,slim,rb}',
    './app/components/molecules/**/*.{erb,haml,html,slim,rb}',
    './app/components/organisms/**/*.{erb,haml,html,slim,rb}',
    './app/components/templates/**/*.{erb,haml,html,slim,rb}',
    './app/components/pages/**/*.{erb,haml,html,slim,rb}',
    './spec/components/atoms/**/*.{erb,haml,html,slim,rb}',
    './spec/components/forms/**/*.{erb,haml,html,slim,rb}',
    './spec/components/molecules/**/*.{erb,haml,html,slim,rb}',
    './spec/components/organisms/**/*.{erb,haml,html,slim,rb}',
    './spec/components/templates/**/*.{erb,haml,html,slim,rb}',
    './spec/components/pages/**/*.{erb,haml,html,slim,rb}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
