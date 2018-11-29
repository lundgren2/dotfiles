module.exports = {
  config: {
    updateChannel: "canary",
    fontSize: 13,
    fontFamily: 'Fira Code, Monaco, "Inconsolata for Powerline", monospace',
    cursorShape: "BLOCK",
    padding: "10px 12px"
  },

  plugins: [
    "hypercwd",
    "hyper-sync-settings",
    "hyper-pane",
    "hyper-search",
    "hyper-chesterish",
    "hyper-tabs-enhanced"
  ],

  // localPlugins: [],

  keymaps: {
    "window:reload": "cmd+alt+r",
    "editor:clearBuffer": "cmd+r",
    "pane:next": "shift+cmd+right",
    "pane:prev": "shift+cmd+left"
  }
};
