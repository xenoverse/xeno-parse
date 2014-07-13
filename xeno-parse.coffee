Polymer 'xeno-parse',

  domReady: ->
    contentRoot = document.querySelector('xeno-parse link[rel="import"]').import
    content = (contentRoot.querySelector 'body').innerHTML
    # console.log content

    marked.setOptions
      renderer: new Renderer()
      gfm: true
      tables: true
      breaks: false
      pedantic: false
      sanitize: true
      smartLists: true
      smartypants: false

    html = marked content
    console.log html

    @$.content.innerHTML = html
