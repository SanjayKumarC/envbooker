# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
User.create! :email => 'admin@admin.com', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'
User.create! :email => 'test@admin.com', :admin => false, :password => 'admin455', :password_confirmation => 'admin455'
User.create! :email => 'test2@admin.com', :admin => false, :password => 'admin455', :password_confirmation => 'admin455'

Envlevel.delete_all
Envlevel.create!(:name => "DEV")
Envlevel.create!(:name => "UAT")
Envlevel.create!(:name => "SIT")
Envlevel.create!(:name => "PROD")

Env.delete_all
Env.create!(:name => "DEV1", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV2", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV3", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "DEV4", :envlevel => Envlevel.find_by_name("DEV"))
Env.create!(:name => "MOD",  :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "UAT", :envlevel => Envlevel.find_by_name("UAT"))
Env.create!(:name => "TST01",  :envlevel => Envlevel.find_by_name("SIT"))
Env.create!(:name => "E2E",  :envlevel => Envlevel.find_by_name("SIT"))
Env.create!(:name => "Baseline",  :envlevel => Envlevel.find_by_name("SIT"))


Project.delete_all
Project.create!(:name => "Dummy Project 1")
Project.create!(:name => "Dummy Project 2")
Project.create!(:name => "Dummy Project 3")

App.delete_all
App.create!([:name=> "Charles River"])
App.create!([:name=> "CADIS"])
App.create!([:name=> "ThinkFolio"])
App.create!([:name=> "eFront"])
App.create!([:name=> "CeDaR"])
App.create!([:name=> "Phoenix"])
App.create!([:name=> "Portree"])

Envbooking.delete_all
Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 1"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("09/02/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/05/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])
Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("09/02/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/05/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CeDaR")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 3"), 
	:user => User.find_by_email('admin@admin.com'),
	:start_date => Date.strptime("09/02/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/05/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("eFront")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV2'), 
	:project => Project.find_by_name("Dummy Project 1"), 
	:user => User.find_by_email('test@admin.com'),
	:start_date => Date.strptime("09/03/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/06/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("Charles River")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV2'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:user => User.find_by_email('test@admin.com'),
	:start_date => Date.strptime("09/4/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/07/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("Phoenix")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:user => User.find_by_email('test2@admin.com'),
	:start_date => Date.strptime("09/04/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/07/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("Portree")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Dummy Project 3"), 
	:user => User.find_by_email('test@admin.com'),
	:start_date => Date.strptime("09/06/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/08/2015", "%d/%m/%Y"), 
	:app => App.find_by_name("CADIS")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV4'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:user => User.find_by_email('test2@admin.com'),
	:start_date => Date.strptime("09/05/2015", "%d/%m/%Y"), 
	:end_date => Date.strptime("28/09/2015", "%d/%m/%Y"), 
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



