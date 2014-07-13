class Renderer extends marked.Renderer

  heading: (text, level) ->
    return '<xeno-space>' + text + '/<xeno-space>'
