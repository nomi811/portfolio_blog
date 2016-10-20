class ProjectsController < ApplicationController # :nodoc:
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_project, only: [:show, :edit, :update, :destroy]

  def index
    @projects = Project.all.order('created_at desc')
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: 'Nice, Nomi!  That project was successfully saved!'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @project.update project_params
      redirect_to @project, notice: 'Awesome, Nomi!  That project was successfully updated!'
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: 'Your project was deleted!'
  end

  private

  def find_project
    @project = Project.friendly.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link, :slug)
  end
end
