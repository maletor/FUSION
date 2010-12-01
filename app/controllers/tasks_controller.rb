class TasksController < ApplicationController
  before_filter :login_required

  # GET /tasks
  # GET /tasks.xml
  def index
    @tasks = Task.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.xml
  def show
    @project = Project.find(params[:project_id])
    @task = Task.find(params[:id])

    @images = @task.images
    @image = @task.images.build
    @comment = @task.comments.build
    @comments = @task.comments
    
    if params[:sort] = "priority"
      @tasks = @project.tasks.order("priority desc") 
    elsif params[:sort] = "name"
      @tasks = @project.tasks.order("name asc") 
    else
      @tasks = @project.tasks.order("due desc") 
    end


    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.xml
  def new
    @milestone = Milestone.find(params[:milestone_id])
    @task = @milestone.tasks.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.xml
  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to(project_task_path(@task.project, @task))
    else
      render :template => "projects/show" 
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.xml
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to(@task, :notice => 'Task was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.xml
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    redirect_to project_task_path(@task.project, @task)
  end
end
