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

Appconfig.destroy_all
a = Appconfig.new
a.singleton_guard=0

a.template = "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"
a.total_hours = 160
a.save!

User.destroy_all
User.create! :email => 'admin@admin.com', :name => 'John', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'
User.create! :email => 'notadmin@admin.com', :name => 'Someone Else', :admin => false, :password => 'admin455', :password_confirmation => 'admin455'

Envlevel.delete_all
Envlevel.create!(:name => "DEV", :description => "Development Environment")
Envlevel.create!(:name => "UAT", :description => "User Testing")
Envlevel.create!(:name => "SIT", :description => "System Testing")
Envlevel.create!(:name => "PROD-SUPPORT", :description => "Production Support")

Env.delete_all
Env.create!(:name => "DEV1", :envlevel => Envlevel.find_by_name("DEV"), :description => "Main Dev Env", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "DEV2", :envlevel => Envlevel.find_by_name("DEV"), :description => "CI", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "DEV3", :envlevel => Envlevel.find_by_name("DEV"), :description => "DEV Env")
Env.create!(:name => "DEV4", :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod Support", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "MOD",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Pre Prod", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "UAT", :envlevel => Envlevel.find_by_name("UAT"), :description => "User Testing", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "TST02",  :envlevel => Envlevel.find_by_name("SIT"), :description => "System Testing", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "E2E",  :envlevel => Envlevel.find_by_name("UAT"), :description => "End to End", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "Baseline",  :envlevel => Envlevel.find_by_name("UAT"), :description => "Production Baseline", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "Model 1",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "Model 2",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))
Env.create!(:name => "Model 3",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"), :description => "Prod CR Copy", :notes => Forgery(:lorem_ipsum).words(rand(10)+1))

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

Downtime.delete_all
reasons = ['Batch not complete', 'Out for refresh', 'Access Problems', 'Someone else using', 'Other' ]

(1..50).each do |i|
	Downtime.create!(
		:env => Env.find_by_id( rand(Env.minimum(:id)..Env.maximum(:id)) ),
		:date => Date.today - (rand(180)),
		:notes => '',
		:hours => rand(10),
		:reason => reasons[rand(5)]
	)
end

Status.delete_all
Status.create!(:name => 'In Progress', :status_type => 'in_progress_status')
Status.create!(:name => 'New', :status_type => 'new_status')
Status.create!(:name => 'Scheduled', :status_type => 'scheduled_status')
Status.create!(:name => 'Complete', :status_type => 'complete_status')

System.delete_all

Env.all.each do |e|
	(1..rand(App.count)).each do |i|
		s = System.new
		s.env = e
		s.app = App.find(i)
		if(i.even?)
			s.refresh_date = Date.today - (rand(90))
		else
			s.refresh_date = nil
		end

		s.save!
	end
end

RefreshRequest.delete_all
(1..10).each do |i|
	s = System.find(i)
	RefreshRequest.create!([
		:env => s.env,
		:app => s.app,
		:refresh_date => Date.today - rand(90),
		:notes => Forgery(:lorem_ipsum).words(rand(50)+1),
		:status => Status.find(rand(Status.count)+1),
		:mks_id => (rand(900000) + 100000).to_s
	])
end

SystemProperty.delete_all
System.all.each do |system|
	sp = SystemProperty.new
	sp.system = system
	sp.key = "State"
	sp.value = "Open"
	sp.save!
end

BookingRequest.delete_all
(1..10).each do |i|
	BookingRequest.create!([
		:notes => Forgery(:lorem_ipsum).words(rand(50)+1),
		:project => Project.find(rand(Project.count) + 1).name,
		:user => 'John Doe',
		:status => Status.find(rand(Status.count)+1),
		:start_date => Date.today() - rand(30),
		:end_date => Date.today() + rand(90)
	])
end
