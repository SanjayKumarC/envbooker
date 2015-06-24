# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create! :email => 'admin@admin.com', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'
User.create! :email => 'notadmin@admin.com', :admin => false, :password => 'admin455', :password_confirmation => 'admin455'


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
Project.create!(:name => "QUANTS", :description => "Prod CR Copy")
Project.create!(:name => "Panther", :description => "SWIP -> AAM")
Project.create!(:name => "Cash and FX", :description => "Cash and FX")
Project.create!(:name => "Fund Transfer", :description => "SWIP -> AAM")
Project.create!(:name => "BAU", :description => "Busines as Usual")
Project.create!(:name => "CADIS rebuild", :description => "Amalgamate Edinbugh and London CADII")
Project.create!(:name => "Prod Support", :description => "Production Support Work")
Project.create!(:name => "CI", :description => "Continuous Integration")
Project.create!(:name => "TSA Exit", :description => "SWIP -> AAM")


App.delete_all
App.create!([:name=> "Charles River", :description => "Trading System", :color => "#FF4136"])
App.create!([:name=> "CADIS", :description => "Data/ETL", :color => "#0074D9"])
App.create!([:name=> "ThinkFolio", :description => "Trading System", :color => "#7FDBFF"])
App.create!([:name=> "eFront", :description => "Property System", :color => "#39CCCC"])
App.create!([:name=> "CeDaR", :description => "Data Master", :color => "#3D9970"])
App.create!([:name=> "Portree", :description => "Trade Enrichment", :color => "#01FF70"])
App.create!([:name=> "RDW", :description => "Data Warehousing", :color => "#FF851B"])

# :color => "#85144b"
# :color => "#F012BE"
# :color => "#B10DC9"
# :color => "#AAAAAA"
# :color => "#DDDDDD"


Envbooking.delete_all

Env.all.each do |e|
	Envbooking.create!([
		:env => e, 
		:project => Project.find_by_id( rand(Project.minimum(:id)..Project.maximum(:id)) ), 
		:user => User.find_by_email('admin@admin.com'),
		:start_date => Date.today - (rand(180)), 
		:end_date => Date.today + (rand(180)), 
		:app => App.find_by_id( rand(App.minimum(:id)..App.maximum(:id)) )
		])
end

App.all.each do |a|
	Envbooking.create!([
		:env => Env.find_by_id( rand(Env.minimum(:id)..Env.maximum(:id)) ), 
		:project => Project.find_by_id( rand(Project.minimum(:id)..Project.maximum(:id)) ), 
		:user => User.find_by_email('admin@admin.com'),
		:start_date => Date.today - (rand(180)), 
		:end_date => Date.today + (rand(180)), 
		:app => a
	])
end

# Envapp.delete_all
# Env.all.each do |e|
# 	App.all.each do |a|
# 		Envapp.create!([
# 			:env => e,
# 			:app => a
# 			])
# 	end
# end



