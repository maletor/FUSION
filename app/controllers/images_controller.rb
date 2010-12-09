class ImagesController < ApplicationController
  respond_to :html, :js

  def new
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
    @annotations = @image.annotations.order("created_at desc")
    @images = Project.find(params[:project_id]).images
  end

  def update
    @image = Image.find(params[:id])
    @image.approved_at = Time.zone.now
    flash[:notice] = "Success" if @image.update_attributes(params[:image])
  end

  def create
    @image = Image.new(params[:image])

    if @image.save
      redirect_to([@image.project, @image]) 
    else
      render :action => "new"
    end
  end
end
