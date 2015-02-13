# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


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
Env.create!(:name => "PROD", :envlevel => Envlevel.find_by_name("PROD"))
Env.create!(:name => "BCP",  :envlevel => Envlevel.find_by_name("PROD"))

Project.delete_all
Project.create!(:name => "Dummy Project 1")
Project.create!(:name => "Dummy Project 2")
Project.create!(:name => "Dummy Project 3")

Envbooking.delete_all
Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 1"), 
	:start_date => DateTime.strptime("09/02/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/05/2015 00:00", "%d/%m/%Y %H:%M")
	])
Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:start_date => DateTime.strptime("09/02/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/05/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV1'), 
	:project => Project.find_by_name("Dummy Project 3"), 
	:start_date => DateTime.strptime("09/02/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/05/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV2'), 
	:project => Project.find_by_name("Dummy Project 1"), 
	:start_date => DateTime.strptime("09/03/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/06/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV2'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:start_date => DateTime.strptime("09/4/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/07/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:start_date => DateTime.strptime("09/04/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/07/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV3'), 
	:project => Project.find_by_name("Dummy Project 3"), 
	:start_date => DateTime.strptime("09/06/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/08/2015 00:00", "%d/%m/%Y %H:%M")
	])

Envbooking.create!([
	:env => Env.find_by_name('DEV4'), 
	:project => Project.find_by_name("Dummy Project 2"), 
	:start_date => DateTime.strptime("09/05/2015 00:00", "%d/%m/%Y %H:%M"), 
	:end_date => DateTime.strptime("28/09/2015 00:00", "%d/%m/%Y %H:%M")
	])

App.delete_all
App.create!([:name=> "Charles River"])
App.create!([:name=> "CADIS"])
App.create!([:name=> "ThinkFolio"])
App.create!([:name=> "eFront"])
App.create!([:name=> "CeDaR"])
App.create!([:name=> "Phoenix"])
App.create!([:name=> "Portree"])


Envapp.delete_all
Env.all.each do |e|
	App.all.each do |a|
		Envapp.create!([
			:env => e,
			:app => a
			])
	end
end

User.delete_all
User.create! :email => 'admin@admin.com', :admin => true, :password => 'admin455', :password_confirmation => 'admin455'




