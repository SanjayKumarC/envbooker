# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create! :email => 'admin@admin.com', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'

Envlevel.delete_all
Envlevel.create!(:name => "DEV")
Envlevel.create!(:name => "UAT")
Envlevel.create!(:name => "SIT")
Envlevel.create!(:name => "PROD-SUPPORT")

Env.delete_all
Env.create!(:name => "DEV1", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV2", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV3", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV4", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "MOD",  :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "UAT", :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "TST01",  :envlevel => Envlevel.find_by_name("SIT"))
Env.create!(:name => "E2E",  :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "Baseline",  :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "Model 1",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"))
Env.create!(:name => "Model 2",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"))
Env.create!(:name => "Model 3",  :envlevel => Envlevel.find_by_name("PROD-SUPPORT"))


Project.delete_all
Project.create!(:name => "QUANTS")
Project.create!(:name => "Panther")
Project.create!(:name => "Cash and FX")
Project.create!(:name => "Fund Transfer")
Project.create!(:name => "BAU")
Project.create!(:name => "CADIS rebuild")
Project.create!(:name => "Prod Support")
Project.create!(:name => "CI")
Project.create!(:name => "TSA Exit")


App.delete_all
App.create!([:name=> "Charles River", :color => "#FF4136"])
App.create!([:name=> "CADIS", :color => "#0074D9"])
App.create!([:name=> "ThinkFolio", :color => "#7FDBFF"])
App.create!([:name=> "eFront", :color => "#39CCCC"])
App.create!([:name=> "CeDaR", :color => "#3D9970"])
App.create!([:name=> "Phoenix", :color => "#2ECC40"])
App.create!([:name=> "Portree", :color => "#01FF70"])
App.create!([:name=> "Cash and FX", :color => "#FFDC00"])
App.create!([:name=> "RDW", :color => "#FF851B"])

# :color => "#85144b"
# :color => "#F012BE"
# :color => "#B10DC9"
# :color => "#AAAAAA"
# :color => "#DDDDDD"


Envbooking.delete_all

# Env.all.each do |e|
# 	Envbooking.create!([
# 		:env => e, 
# 		:project => Project.find_by_name("Fund Transfer"), 
# 		:user => User.find_by_email('admin@admin.com'),
# 		:start_date => Date.strptime("01/01/2015", "%d/%m/%Y"), 
# 		:end_date => Date.strptime("01/01/2015", "%d/%m/%Y"), 
# 		:app => App.find_by_name("CADIS")
# 		])
# 	Envbooking.create!([
# 		:env => e, 
# 		:project => Project.find_by_name("Fund Transfer"), 
# 		:user => User.find_by_email('admin@admin.com'),
# 		:start_date => Date.strptime("31/12/2015", "%d/%m/%Y"), 
# 		:end_date => Date.strptime("31/12/2015", "%d/%m/%Y"), 
# 		:app => App.find_by_name("CADIS")
# 	])
# end

Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Fund Transfer"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("01/06/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("30/06/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("RDW")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV2'), 
	:project => Project.find_by_name("CI"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("01/04/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("31/12/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Prod Support"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("08/06/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("12/06/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])
Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Prod Support"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("01/01/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("31/03/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("ThinkFolio")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV4'), 
	:project => Project.find_by_name("BAU"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("01/06/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("16/06/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])
Envbooking.create!([
	:env => Env.find_by_name('DEV4'), 
	:project => Project.find_by_name("CADIS rebuild"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("17/06/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("30/06/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])
Envbooking.create!([
	:env => Env.find_by_name('DEV4'), 
	:project => Project.find_by_name("TSA Exit"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("01/01/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("31/03/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])

# Envapp.delete_all
# Env.all.each do |e|
# 	App.all.each do |a|
# 		Envapp.create!([
# 			:env => e,
# 			:app => a
# 			])
# 	end
# end



