module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'

    @toolBar.addButton
      tooltip:  "Open in Tower"
      callback: "open-project-in-tower:open"
      icon:     "android-navigate"
      iconset:  'ion'

    @toolBar.addButton
      tooltip:  "Open in Terminal"
      callback: "open-terminal-here:open-root"
      icon:     "terminal"

    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Project+ [ctrl-cmd-p]"
      callback: "project-plus:toggle-project-finder"
      icon:     "arrow-swap"
      iconset:  "ion"

    @toolBar.addButton
      tooltip:  "Project+ Save"
      callback: "project-plus:save"
      icon:     "plus-round"
      iconset: "ion"

    @toolBar.addButton
      tooltip:  "Project+ Remove"
      callback: "project-plus:remove"
      icon:     "close-round"
      iconset: "ion"

    @toolBar.addSpacer()

    @toolBar.addButton
      tooltip:  "Project Manager"
      callback: "project-manager:list-projects"
      icon:     "briefcase"
      iconset: "ion"

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
      callback: "git:toggle-git-panel"
      icon:     "diff"



    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Switch Themes"
      callback: "switcheroo:toggle"
      icon:     "contrast"
      iconset:  "ion"

    @toolBar.addButton
      tooltip:  "Themes"
      callback: "fuzzy-theme-switcher:toggle"
      icon:     "paintcan"

    @toolBar.addButton
      tooltip:  "Styleguide"
      callback: "styleguide:show"
      icon:     "pencil"

    @toolBar.addButton
      tooltip:  "Styles"
      callback: "application:open-your-stylesheet"
      icon:     "ruby"

    @toolBar.addButton
      tooltip:  "Snippets"
      callback: "application:open-your-snippets"
      icon:     "puzzle"




    @toolBar.addSpacer()


    @toolBar.addButton
      tooltip:  "Markdown"
      callback: "markdown-preview:toggle"
      icon:     "markdown"

    @toolBar.addButton
      tooltip:  "Notes"
      callback: "nvatom:toggle"
      icon:     "clipboard"
      iconset:  "ion"

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
      tooltip:  "Screenshot"
      callback: "custom:screenshot"
      icon:     "android-camera"
      iconset: "ion"

    @toolBar.addButton
      tooltip:  "Run Specs"
      callback: "window:run-package-specs"
      icon:     "bug"
      iconset: "ion"




    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        tooltip: 'Reload All Styles'
        callback: 'dev-live-reload:reload-all'
        icon: 'android-color-palette'
        iconset: 'ion'

      @toolBar.addButton
        tooltip: 'Reload Window'
        callback: 'window:reload'
        icon: 'refresh'
        iconset: 'ion'
