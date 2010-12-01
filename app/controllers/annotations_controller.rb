class AnnotationsController < ApplicationController
  def edit
    @image = Image.find(params[:image_id])
    @annotation = Annotation.find(params[:id])
  end

  def index
    @annotations = Annotation.all

    render :json => @annotations.to_json
  end

  def show
    @annotation = Annotation.find(params[:id])
  end

  def new
    @image = Image.find(params[:image_id])
    @annotation = @image.annotations.build
  end

  def update
    @annotation = Annotation.find(params[:id])

    flash[:notice] = 'Annotation updated' if @annotation.update_attributes(params[:annotation])
  end

  def create
    @image = Image.find(params[:image_id])
    @annotation = @image.annotations.build(params[:annotation])

    flash[:notice] = 'Annotation created.' if @annotation.save
  end

  def destroy
    @annotation = Annotation.find(params[:id])
    flash[:notice] = 'Annotation destroyed.' if @annotation.destroy
  end
end

