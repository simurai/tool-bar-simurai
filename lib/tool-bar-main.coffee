module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar'

    @toolBar.addButton
      tooltip:  "Project"
      callback: "tree-view:toggle"
      icon:     "file-directory"

    @toolBar.addButton
      tooltip:  "Git"
      callback: "github:toggle-git-tab-focus"
      icon:     "diff"

    @toolBar.addButton
      tooltip:  "GitHub"
      callback: "github:toggle-github-tab-focus"
      icon:     "octoface"



    @toolBar.addSpacer()
    @toolBar.addSpacer()



    @toolBar.addButton
      tooltip:  "Open Dev"
      callback: "application:open-dev"
      icon:     "color-mode"

    @toolBar.addButton
      tooltip:  "Open in Terminal"
      callback: "open-terminal-here:open-root"
      icon:     "terminal"

    @toolBar.addButton
      tooltip:  "Open in Tower"
      callback: "open-project-in-tower:open"
      icon:     "android-navigate"
      iconset:  'ion'

    @toolBar.addButton
      tooltip:  "Open in GitHub Desktop"
      callback: "open-in-github-app:open"
      icon:     "mark-github"

    @toolBar.addButton
      tooltip:  "Open on GitHub"
      callback: "open-on-github:file"
      icon:     "link"



    @toolBar.addSpacer()



    @toolBar.addButton
      tooltip:  "Styleguide"
      callback: "styleguide:show"
      icon:     "bowtie"
      iconset: 'ion'

    @toolBar.addButton
      tooltip:  "Styles"
      callback: "application:open-your-stylesheet"
      icon: 'android-color-palette'
      iconset: 'ion'

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
      tooltip:  "Toggle Soft Wrap"
      callback: "editor:toggle-soft-wrap"
      icon:     "no-newline"



    @toolBar.addSpacer()



    @toolBar.addButton
      tooltip:  "Run Specs"
      callback: "window:run-package-specs"
      icon:     "bug"
      iconset: "ion"



    if atom.inDevMode()
      @toolBar.addSpacer()

      @toolBar.addButton
        tooltip:  "Screenshot"
        callback: "custom:screenshot"
        icon:     "android-camera"
        iconset: "ion"

      @toolBar.addButton
        tooltip: 'Reload All Styles'
        callback: 'dev-live-reload:reload-all'
        icon: 'refresh'
        iconset: 'ion'
