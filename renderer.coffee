class Renderer extends marked.Renderer

  isBracketOpening: false

  heading: (text, level) ->
    escapedText = text.toLowerCase().replace /[^\w]+/g, '-'

    html = @closeBracket()

    html += """
      <xeno-space>
        <h#{level}>
          <a name="#{escapedText}" class="anchor" href="##{escapedText}">
            <span class="header-link"></span>
          </a>
          #{text}
        </h#{level}>

    """

    @isBracketOpening = true

    return html

  closeBracket: (html) ->
    html ||= ''

    if @isBracketOpening
      html += """
        </xeno-space>

      """

      @isBracketOpening = false

    return html

  postprocess: (html) ->
    return @closeBracket html
