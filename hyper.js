module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 12,
    fontFamily: 'Monaco, Fira Code, "Inconsolata for Powerline", monospace',
    cursorShape: 'BLOCK',
    padding: '10px 12px',
    hypercwd: {
      initialWorkingDirectory: '~',
    },
    hyperTabs: {
      tabIconsColored: true,
      activityColor: 'salmon',
    },
  },

  plugins: [
    // 'hyper-chesterish',
    'hyper-tabs-enhanced',
    'hypercwd',
    'hyper-sync-settings',
    'hyper-pane',
    'hyper-search',
  ],

  // localPlugins: [],

  keymaps: {
    'window:reload': 'cmd+alt+r',
    'editor:clearBuffer': 'cmd+r',
    'pane:next': 'shift+cmd+right',
    'pane:prev': 'shift+cmd+left',
  },
}
