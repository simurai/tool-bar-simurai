module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'




    @toolBar.addButton
      tooltip:  "Open on GitHub"
      callback: "application:new-file"
      icon:     "octoface"

    @toolBar.addButton
      tooltip:  "Projects [ctrl-cmd-p]"
      callback: "project-plus:toggle-project-finder"
      icon:     "file-directory"

    @toolBar.addButton
      tooltip:  "Open Dev"
      callback: "application:open-dev"
      icon:     "color-mode"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Themes"
      callback: "settings-view:change-themes"
      icon:     "paintcan"

    @toolBar.addButton
      tooltip:  "Styles"
      callback: "application:open-your-stylesheet"
      icon:     "ruby"

    @toolBar.addButton
      tooltip:  "Styleguide"
      callback: "styleguide:show"
      icon:     "pencil"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Git Control"
      callback: "git-control:toggle"
      icon:     "circuit-board"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Git: Workspace"
      callback: "git:view-and-commit-changes"
      icon:     "git-commit"

    @toolBar.addButton
      tooltip:  "Git: Refresh"
      callback: "git:refresh-status"
      icon:     "sync"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Markdown"
      callback: "markdown-preview:toggle"
      icon:     "markdown"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Config"
      callback: "application:open-your-config"
      icon:     "settings"

    @toolBar.addButton
      tooltip:  "Init Script"
      callback: "application:open-your-init-script"
      icon:     "terminal"

    @toolBar.addButton
      tooltip:  "Keymap"
      callback: "application:open-your-keymap"
      icon:     "keyboard"

    @toolBar.addButton
      tooltip:  "Snippets"
      callback: "application:open-your-snippets"
      icon:     "puzzle"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Toggle Soft Wrap"
      callback: "editor:toggle-soft-wrap"
      icon:     "no-newline"

    @toolBar.addButton
      tooltip:  "Fullscreen"
      callback: "window:toggle-full-screen"
      icon:     "screen-full"

    @toolBar.addButton
      tooltip:  "Zen"
      callback: "zen:toggle"
      icon:     "broadcast"

    @toolBar.addButton
      tooltip:  "DevTools"
      callback: "window:toggle-dev-tools"
      icon:     "tools"


    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Open on GitHub"
      callback: "open-on-github:branch-compare"
      icon:     "owl"
      iconset:  "mdi"




    if atom.inDevMode()
      @toolBar.addSpacer()
      @toolBar.addSpacer()

      @toolBar.addButton
        tooltip: 'Reload Window'
        callback: 'window:reload'
        icon: 'refresh'
        iconset: 'ion'

      @toolBar.addButton
        tooltip: 'Toggle Developer Tools'
        callback: ->
          require('remote').getCurrentWindow().toggleDevTools()
        icon: 'terminal'
