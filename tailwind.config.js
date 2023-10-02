/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js,php}"],
  theme: {
    extend: {
      colors: {
        logo: {
          DEFAULT: style="background-image: url ('/assets/logo.jpg');",
        }
      }
    },
  },
  plugins: [],
}

// fff5d2