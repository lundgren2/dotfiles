module.exports = {
  config: {
    fontSize: 13,
    fontFamily: 'Fira Code, "Inconsolata for Powerline", Monaco, monospace',
    cursorShape: 'BLOCK',
    padding: '10px 12px',
    hyperTabs: {
      tabIconsColored: true,
      activityColor: 'salmon',
    },
  },

  plugins: [
    'hyper-tabs-enhanced',
    'hyper-sync-settings',
    'hypercwd',
    'hyper-pane',
    'hyper-search',
    'verminal',
  ],

  keymaps: {
    'window:reload': 'cmd+alt+r',
    'editor:clearBuffer': 'cmd+r',
    'pane:next': 'shift+cmd+right',
    'pane:prev': 'shift+cmd+left',
  },
}
