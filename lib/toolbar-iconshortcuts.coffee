module.exports =
  activate: (state) ->
    require('atom-package-deps').install('toolbar-iconshortcuts')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'toolbar-iconshortcuts'

    @toolBar.addButton
      icon: 'file-code'
      callback: 'application:new-file'
      tooltip: 'New File'
      iconset: ''
    @toolBar.addButton
      icon: 'file-directory'
      callback: 'application:open-file'
      tooltip: 'Open File...'
      iconset: ''
    @toolBar.addButton
      icon: 'file-submodule'
      callback: 'application:open-folder'
      tooltip: 'Open Folder...'
      iconset: ''
    @toolBar.addButton
      icon: 'checklist'
      callback: 'core:save'
      tooltip: 'Save...'
      iconset: ''

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'browser'
      callback: 'open-in-browser:open'
      tooltip: 'Open in Browser...'
      iconset: ''
    @toolBar.addButton
      icon: 'server'
      callback: 'atom-live-server:start-3000'
      tooltip: 'Run localhost port 3000...'
      iconset: ''
    @toolBar.addButton
      icon: 'terminal'
      callback: 'run:file'
      tooltip: 'Run script...'
      iconset: ''
    @toolBar.addButton
      icon: 'chevron-right'
      callback: 'pane:split-right'
      tooltip: 'Split Right'
      iconset: ''
    @toolBar.addButton
      icon: 'mirror'
      callback: 'tree-view:toggle'
      tooltip: 'Toggle Treeview'
      iconset: ''
    @toolBar.addButton
      icon: 'search'
      callback: 'find-and-replace:show'
      tooltip: 'Find...'
      iconset: 'ion'
    @toolBar.addButton
      icon: 'shuffle'
      callback: 'find-and-replace:show-replace'
      tooltip: 'Find and Replace...'
      iconset: 'ion'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'three-bars'
      callback: 'command-palette:toggle'
      tooltip: 'Command Palette...'
      iconset: ''
    @toolBar.addButton
      icon: 'tools'
      callback: 'settings-view:open'
      tooltip: 'Settings...'
      iconset: ''
    @toolBar.addButton
      icon: 'sync'
      callback: 'window:reload'
      tooltip: 'Reload Window'
      iconset: ''
    @toolBar.addButton
      icon: 'target-two'
      callback: ->
        require('remote').getCurrentWindow().toggleDevTools()
      tooltip: 'Toggle Developer Tools'
      iconset: 'fi'

    @toolBar.addSpacer()

    @toolBar.addButton
      icon: 'x'
      callback: 'tool-bar:toggle'
      tooltip: 'Close Tool-Bar'
      iconset: ''
