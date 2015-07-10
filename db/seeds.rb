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
	r = hex_color[1..2]
	g = hex_color[3..4]
	b = hex_color[5..6]
	r = '0x' + r
	g = '0x' + g
	b = '0x' + b

	return [r.hex, g.hex, b.hex]
end

#reset the sequences
sql = 'update sqlite_sequence set seq = 0'
ActiveRecord::Base.connection.execute(sql)

Appconfig.delete_all
a = Appconfig.new
a.singleton_guard=0

a.template = "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}}"
a.save!

User.delete_all
User.create! :email => 'admin@admin.com', :name => 'John', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'
User.create! :email => 'notadmin@admin.com', :name => 'Someone Else', :admin => false, :password => 'admin455', :password_confirmation => 'admin455'


Envlevel.delete_all
Envlevel.create!(:name => "DEV", :description => "Development Environment")
Envlevel.create!(:name => "UAT", :description => "User Testing")
Envlevel.create!(:name => "SIT", :description => "System Testin")
Envlevel.create!(:name => "PROD-SUPPORT", :description => "Production Support")

Env.delete_all
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "DEV1", :envlevel => Envlevel.find_by_name("DEV"), :description => "Main Dev Env")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "DEV2", :envlevel => Envlevel.find_by_name("DEV"), :description => "CI")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "DEV3", :envlevel => Envlevel.find_by_name("DEV"), :description => "DEV Env")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "DEV4", :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod Support")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "MOD",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Pre Prod")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "UAT", :envlevel => Envlevel.find_by_name("UAT"), :description => "User Testing")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "TST02",  :envlevel => Envlevel.find_by_name("SIT"), :description => "System Testing")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "E2E",  :envlevel => Envlevel.find_by_name("UAT"), :description => "End to End")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "Baseline",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Production Baseline")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "Model 1",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "Model 2",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")
Env.create!(:last_refresh_date => Date.today - (rand(90)), :name => "Model 3",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")


project_colors = ["\#00c159","\#4ac7db","\#fff425","\#f3a735","\#bc1d3a","\#002ab3","\#3383cd","\#d6a9d4","\#ff55ff","\#454545"]

Project.delete_all
10.times do |i|
	p = Project.new
	p.name = "Project #{i}"
	p.description = "Project #{i}"
	p.color = project_colors.pop
	p.text_color = get_text_color(p.color)
	p.save!

end

app_colors = ["\#00b159","\#4aa7db","\#ffc425","\#f37735","\#bc0f3a","\#002663","\#0083cd","\#d6d6d4","\#ffffff","\#111111"]

App.delete_all
10.times do |i|
	# c = rand(16777215).to_s(16)
	#
	# len = 6 - c.to_s.length
	# str = ''
	# len.times do |x|
	# 	str+="0"
	# end
	# full_string = str + c.to_s
	# my_color = "\##{full_string}"

	app = App.new
	app.name = "App #{i}"
	app.description = "App #{i}"
	app.color = app_colors.pop
	app.text_color = get_text_color(app.color)
	app.save!
end

Envbooking.delete_all

Env.all.each do |e|
	Envbooking.create!([
		:env => e,
		:project => Project.find_by_id( rand(Project.minimum(:id)..Project.maximum(:id)) ),
		:user => User.find_by_id( rand( User.minimum(:id) .. User.maximum(:id) ) ),
		:start_date => Date.today - (rand(180)),
		:end_date => Date.today + (rand(180)),
		:app => App.find_by_id( rand(App.minimum(:id)..App.maximum(:id)) )
		])
end

App.all.each do |a|
	Envbooking.create!([
		:env => Env.find_by_id( rand(Env.minimum(:id)..Env.maximum(:id)) ),
		:project => Project.find_by_id( rand(Project.minimum(:id)..Project.maximum(:id)) ),
		:user => User.find_by_id(rand(User.minimum(:id)..User.maximum(:id))),
		:start_date => Date.today - (rand(180)),
		:end_date => Date.today + (rand(180)),
		:app => a
	])
end
