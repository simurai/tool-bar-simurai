module.exports =
  activate: (state) ->
    require('atom-package-deps').install('tool-bar-main')

  deactivate: ->
    @toolBar?.removeItems()

  serialize: ->

  consumeToolBar: (toolBar) ->
    @toolBar = toolBar 'main-tool-bar' # Workflows -----------------------------------------------

    @toolBar.addButton
      tooltip:  "Project"
      callback: "tree-view:toggle"
      icon:     "file-directory"

    @toolBar.addButton
      tooltip:  "Split diff"
      callback: "split-diff:toggle"
      icon:     "diff"

    @toolBar.addButton
      tooltip:  "Open in GitHub Desktop"
      callback: "open-in-github-app:open"
      icon:     "git-commit"


    @toolBar.addSpacer() # Open in -----------------------------------------------


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
      tooltip:  "Open on GitHub (file)"
      callback: "open-on-github:file"
      icon:     "mark-github"


    @toolBar.addSpacer() # Format/mode -----------------------------------------------



    @toolBar.addButton
      tooltip:  "Markdown"
      callback: "markdown-preview:toggle"
      icon:     "markdown"

    @toolBar.addButton
      tooltip:  "Toggle Soft Wrap"
      callback: "editor:toggle-soft-wrap"
      icon:     "no-newline"


    @toolBar.addSpacer() # Dev Mode -----------------------------------------------


    @toolBar.addButton
      tooltip:  "Open Dev"
      callback: "application:open-dev"
      icon:     "color-mode"


    if atom.inDevMode()

      @toolBar.addSpacer()

      @toolBar.addButton
        tooltip:  "Styleguide"
        callback: "styleguide:show"
        icon:     "bowtie"
        iconset: 'ion'

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

      @toolBar.addButton
        tooltip:  "Run Specs"
        callback: "window:run-package-specs"
        icon:     "bug"
        iconset: "ion"
