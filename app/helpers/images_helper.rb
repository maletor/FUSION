module ImagesHelper
  def approved_submit(image)
    image.approved ? "Disapprove" : "Approve"
  end
end

