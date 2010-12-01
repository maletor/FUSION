class ImagesController < ApplicationController
  respond_to :html, :js

  def new
    @image = Image.new
  end

  def show
    @image = Image.find(params[:id])
    @annotations = @image.annotations
    @images = Project.find(params[:project_id]).images
  end

  def update
    @image = Image.find(params[:id])
    @image.approved_at = Time.now if params[:image][:approved_by]

    flash[:notice] = "Success" if @image.update_attributes(params[:image])
  end

  def create
    @image = Image.new(params[:image])

    if @image.save
      redirect_to(project_path(params[:image][:project_id]), :notice => 'Employee was successfully created.') 
    else
      render :action => "new"
    end
  end
end
