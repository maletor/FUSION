class DrawingsController < ApplicationController
  respond_to :js

  def new
    @image = Image.find(params[:image_id])
  end

  def show
    @image = Image.find(params[:image_id])
    @drawing = Drawing.find(params[:id])
    @image.revert_to(@drawing.image_version)
  end

  def create
    @image = Image.find(params[:image_id])
    @drawing = @image.drawings.build
    @drawing.text = params[:drawing][:text]
    @drawing.image_version = @image.version + 1

    temp = params[:drawing][:base64].split(";base64,").last
    path = "tmp/" + @image.attachment_file_name

    File.open(path, "wb") { |f| f.write(Base64.decode64(temp)) }
    
    @drawing.image.attachment = File.open(path)
    @drawing.image.save
    File.delete(path)

    flash[:notice] = 'Drawing was successfully created.' if @drawing.save
    respond_with(@drawing)
  end
end
