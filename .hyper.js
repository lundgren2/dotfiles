module.exports = {
  config: {
    updateChannel: "stable",
    fontSize: 13,
    fontFamily: 'Fira Code, Monaco, "Inconsolata for Powerline", monospace',
    cursorShape: "BLOCK",
    padding: "10px 12px",
    hyperTabs: {
      tabIconsColored: true,
      activityColor: "salmon"
    }
  },

  plugins: [
    "hyper-chesterish",
    "hyper-tabs-enhanced",
    "hypercwd",
    "hyper-sync-settings",
    "hyper-pane",
    "hyper-search"
  ],

  // localPlugins: [],

  keymaps: {
    "window:reload": "cmd+alt+r",
    "editor:clearBuffer": "cmd+r",
    "pane:next": "shift+cmd+right",
    "pane:prev": "shift+cmd+left"
  }
};
