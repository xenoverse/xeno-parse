Polymer 'xeno-parse',

  domReady: ->
    contentRoot = document.querySelector('xeno-parse link[rel="import"]').import
    content = (contentRoot.querySelector 'body').innerHTML
    console.log content
