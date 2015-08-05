class ProjectsController < ApplicationController
  before_action :check_admin
  respond_to :html, :js

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    set_projects
  end

  def show
    set_project
  end

  def edit
    set_project
  end

  def new
    @project = Project.new
    @project.color = "#000000"
  end

  def create
    @project = Project.new(project_params)
    @project.text_color = get_text_color(@project.color)
    @project.save
    set_projects
  end

  def update
    set_project
    @project.text_color = get_text_color(@project.color)
    @project.update_attributes(project_params)
    set_projects
  end

  def delete
    @project = Project.find(params[:project_id])
  end

  def destroy
    set_project
    @project.destroy
    set_projects
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

    def set_projects
      @projects = Project.all.sort_by{|p| p.name.downcase}
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
