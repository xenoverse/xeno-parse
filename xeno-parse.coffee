Polymer 'xeno-parse',

  renderer: new Renderer()

  domReady: ->
    contentRoot = document.querySelector('xeno-parse link[rel="import"]').import
    content = (contentRoot.querySelector 'body').innerHTML
    # console.log content

    marked.setOptions
      renderer: @renderer
      gfm: true
      tables: true
      breaks: false
      pedantic: false
      sanitize: true
      smartLists: true
      smartypants: false

    html = marked content
    html = @renderer.postprocess html
    console.log html

    @$.content.innerHTML = html
