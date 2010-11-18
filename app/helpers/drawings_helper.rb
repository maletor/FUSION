module DrawingsHelper
  def drawing_text(drawing)
    drawing.text.blank? ? "Drawing" : drawing.text
  end
end
