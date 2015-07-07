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

#reset the sequences
sql = 'update sqlite_sequence set seq = 0'
ActiveRecord::Base.connection.execute(sql)

Appconfig.delete_all
a = Appconfig.new
a.singleton_guard=0

a.template = "{{name}} {{{br}}} {{app}} {{{br}}} {{project}}"
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
Env.create!(:name => "DEV1", :envlevel => Envlevel.find_by_name("DEV"), :description => "Main Dev Env")
Env.create!(:name => "DEV2", :envlevel => Envlevel.find_by_name("DEV"), :description => "CI")
Env.create!(:name => "DEV3", :envlevel => Envlevel.find_by_name("DEV"), :description => "DEV Env")
Env.create!(:name => "DEV4", :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod Support")
Env.create!(:name => "MOD",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Pre Prod")
Env.create!(:name => "UAT", :envlevel => Envlevel.find_by_name("UAT"), :description => "User Testing")
Env.create!(:name => "TST02",  :envlevel => Envlevel.find_by_name("SIT"), :description => "System Testing")
Env.create!(:name => "E2E",  :envlevel => Envlevel.find_by_name("UAT"), :description => "End to End")
Env.create!(:name => "Baseline",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Production Baseline")
Env.create!(:name => "Model 1",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")
Env.create!(:name => "Model 2",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")
Env.create!(:name => "Model 3",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy")


Project.delete_all
10.times do |i|
	Project.create!(:name => "Project #{i}", :description => "Project #{i}")
end

colors = ["\#00b159","\#4aa7db","\#ffc425","\#f37735","\#bc0f3a","\#002663","\#0083cd","\#d6d6d4","\#ffffff","\#111111"]

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
	c = colors.pop
	app.color = c
	app.text_color = get_text_color(c)
	app.save!
	#App.create!([:name=> , :description => "App #{i}", :color => my_color, :text_color => get_text_color(my_color) ])
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
