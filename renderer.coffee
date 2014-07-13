class Renderer extends marked.Renderer

  heading: (text, level) ->
    escapedText = text.toLowerCase().replace /[^\w]+/g, '-'

    html = """
      <xeno-space>
        <h#{level}>
          <a name="#{escapedText}" class="anchor" href="##{escapedText}">
            <span class="header-link"></span>
          </a>
          #{text}
        </h#{level}>
      </xeno-space>

    """

    return html
