// ~/.finicky.js

module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      match: /meet/,
      browser: "Google Chrome",
    },
    {
      match: /calendar/,
      browser: "Google Chrome",
    },
    {
      match: /docs\.google/,
      browser: "Google Chrome",
    },
  ],
};
