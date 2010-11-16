class DrawingsController < ApplicationController
  def new
    @image = Comment::Image.find(params[:image_id])
  end

  def create
    @image = Comment::Image.find(params[:image_id])
    @drawing = @image.drawings.build

    temp = params[:drawing][:base64].split(";base64,").last
    path = Rails.root.join('public', 'images').to_s + "/image.png"

    File.open(path, "wb") { |f| f.write(Base64.decode64(temp)) }
    
    @drawing.image.attachment = File.open(path)
    @drawing.image.save

    if @drawing.save
      redirect_to comment_image_path(params[:image_id])
      flash[:notice] = 'Drawing was successfully created.'
    else
      render :action => 'new'
    end
  end
end
