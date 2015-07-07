class AppsController < ApplicationController
  before_action :check_admin
  respond_to :html, :js

  def check_admin
    unless current_user.admin?
      flash[:error] = "Admins only"
      redirect_to root_url
    end
  end

  def index
    session["init"] = true
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  def show
    @app = App.find(params[:id])
  end

  def new
    @app = App.new
    @app.color = "#000000"
  end

  def edit
    @app = App.find(params[:id])
  end

  def create
    @app = App.new(app_params)

    text_color = get_text_color(@app.color)
    @app.text_color = text_color

    @app.save!
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  def update
    @app = App.find(params[:id])

    text_color = get_text_color(@app.color)
    @app.text_color = text_color

    @app.update_attributes(app_params)
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  def delete
    @app = App.find(params[:app_id])
  end

  def destroy
    @app = App.find(params[:id])
    @app.destroy
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  def get_text_color(color)
    rgb = rgb_values(color)
    c = Sass::Script::Color.new(rgb)

    if(c.lightness > 50.0)
      return "#000000"
    else
      return "#FFFFFF"
    end
  end

  def rgb_values(hex_color)
    hex_color[0]='' #string the leading #character
    r = hex_color[0..1]
    g = hex_color[2..3]
    b = hex_color[4..5]
    r = '0x' + r
    g = '0x' + g
    b = '0x' + b

    return [r.hex, g.hex, b.hex]
  end

  private
    def app_params
      params.require(:app).permit(:name, :description, :color, :text_color)
    end
end
