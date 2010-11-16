class AnnotationsController < ApplicationController
  respond_to :html, :js

  def index
    @annotations = Annotation.all

    render :json => @annotations.to_json
  end

  def show
    @annotation = Comment::Annotation.find(params[:id])
  end

  def new
    @image = Comment::Image.find(params[:image_id])
    @annotation = @image.annotations.build
  end

  def create
    @image = Comment::Image.find(params[:image_id])
    @annotation = @image.annotations.build(params[:annotation])

    flash[:notice] = 'Annotation was successfully created.' if @annotation.save
    respond_with(@annotation)
    
  end

  def destroy
    @annotation = Annotation.find(params[:id])

    if @annotation.destroy
      head :ok
    else
      render :nothing => true
    end
  end
end

