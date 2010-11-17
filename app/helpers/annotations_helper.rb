module AnnotationsHelper
  def annotation_text(annotation)
    annotation.text.blank? ? "Annotation" : annotation.text
  end
end
