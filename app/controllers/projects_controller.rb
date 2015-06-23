class ProjectsController < ApplicationController
  before_action :check_admin
  respond_to :html, :js

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end
  

  # GET /projects
  # GET /projects.json
  def index
    session["init"] = true
    @projects = Project.all.sort_by{|p| p.name.downcase}
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.save
    @projects = Project.all.sort_by{|p| p.name.downcase}
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find(params[:id])
    @project.update_attributes(project_params)
    @projects = Project.all.sort_by{|p| p.name.downcase}
  end

  def delete
    @project = Project.find(params[:project_id])
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    @projects = Project.all.sort_by{|p| p.name.downcase}
  end


  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name)
    end
end
