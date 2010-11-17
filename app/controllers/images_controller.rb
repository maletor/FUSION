class ImagesController < ApplicationController
  def show
    @image = Comment::Image.find(params[:id])
    @annotation = @image.annotations.build
  end



end

