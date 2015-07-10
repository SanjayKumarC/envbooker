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
    @app.text_color = get_text_color(@app.color)
    @app.save
    @apps = App.all.sort_by{|app| app.name.downcase}
  end

  def update
    @app = App.find(params[:id])
    @app.text_color = get_text_color(@app.color)
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
    def app_params
      params.require(:app).permit(:name, :description, :color, :text_color)
    end
end
