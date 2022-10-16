const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './_drafts/**/*.html',
    './_includes/**/*.html',
    './_layouts/**/*.html',
    './_posts/*.md',
    './*.md',
    './*.html',
  ],
    theme: {
      screens: {
        sm: '640px',
        md: '768px',
        lg: '1024px',
        xl: '1280px',
      },
      fontFamily: {
        'sans': ["Inter", ...defaultTheme.fontFamily.sans],
        'serif': ["Lora", ...defaultTheme.fontFamily.serif],
        'mono': [['"Noto Sans Mono"', 'monospace'], ...defaultTheme.fontFamily.mono],
        'logo': ['"Hurricane"', 'cursive']
      },
      extend: {

      },
    },
  plugins: [
  ]
}

