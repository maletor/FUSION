module AnnotationsHelper
  def annotation_text(annotation)
    annotation.note.blank? ? "Annotation" : annotation.note
  end
end
