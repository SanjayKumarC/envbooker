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
    @project.color = "#000000"
  end

  # GET /projects/1/edit
  def edit
    @project = Project.find(params[:id])
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)
    @project.text_color = get_text_color(@project.color)
    @project.save
    @projects = Project.all.sort_by{|p| p.name.downcase}
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    @project = Project.find(params[:id])
    @project.text_color = get_text_color(@project.color)
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

  def get_text_color(color)
    _color = color
    _rgb = rgb_values(_color)
    _c = Sass::Script::Color.new(_rgb)

    if(_c.lightness > 50.0)
      return "#000000"
    else
      return "#FFFFFF"
    end
  end

  def rgb_values(hex_color)
    _hex_color = hex_color[1..-1]
    _r = _hex_color[0..1]
    _g = _hex_color[2..3]
    _b = _hex_color[4..5]
    _r = '0x' + _r
    _g = '0x' + _g
    _b = '0x' + _b

    return [_r.hex, _g.hex, _b.hex]
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :description, :color, :text_color)
    end
end
