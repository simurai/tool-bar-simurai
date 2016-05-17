module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'




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
      tooltip:  "Open on GitHub"
      callback: "open-on-github:file"
      icon:     "octoface"

    @toolBar.addButton
      tooltip:  "Branch compare"
      callback: "open-on-github:branch-compare"
      icon:     "git-pull-request"

    @toolBar.addButton
      tooltip:  "Git: Panel"
      callback: "git:view-and-commit-changes"
      icon:     "git-commit"

    @toolBar.addButton
      tooltip:  "Git: Refresh"
      callback: "git:refresh-status"
      icon:     "sync"


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
      tooltip:  "Markdown"
      callback: "markdown-preview:toggle"
      icon:     "markdown"

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




    if atom.inDevMode()
      @toolBar.addSpacer()
      @toolBar.addSpacer()

      @toolBar.addButton
        tooltip: 'Reload Window'
        callback: 'window:reload'
        icon: 'refresh'
        iconset: 'ion'
