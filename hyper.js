const backgroundColor = "#16161B"; // #0e0d0e

module.exports = {
  config: {
    updateChannel: "stable",
    fontSize: 12,
    fontFamily: 'SF Mono, Menlo, "Inconsolata for Powerline", monospace',
    cursorColor: "rgba(248,28,229,0.8)",
    foregroundColor: "#fff",
    backgroundColor: backgroundColor,
    selectionColor: "rgba(248,28,229,0.3)",
    borderColor: "#333",
    padding: "2px 10px",

    colors: {
      black: backgroundColor,
      red: "#d1267f",
      green: "#00DA90",
      yellow: "#F8FB3C",
      blue: "#009CE6",
      magenta: "#EC26CD",
      cyan: "#13C7FE",
      white: "#C7C7C7",
      lightBlack: "#686868",
      lightRed: "#FD6F6B",
      lightGreen: "#67F86F",
      lightYellow: "#FFFA72",
      lightBlue: "#009CE6",
      lightMagenta: "#FD7CFC",
      lightCyan: "#68FDFE",
      lightWhite: "#FFFFFF"
    }
  },

  plugins: ["hypercwd", "hyper-search", "hyper-pane"],
  localPlugins: [],
  keymaps: {
    "window:reload": "cmd+alt+r",
    "editor:clearBuffer": "cmd+r",
    "pane:next": "shift+cmd+right",
    "pane:prev": "shift+cmd+left"
  }
};
