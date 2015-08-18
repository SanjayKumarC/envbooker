User.delete_all
UserPreference.delete_all
App.delete_all
Appconfig.delete_all
BookingRequest.delete_all
Env.delete_all
Envlevel.delete_all
Project.delete_all
System.delete_all
Envbooking.delete_all

Status.delete_all
Status.create!(:name => 'In Progress', :status_type => 'in_progress_status')
Status.create!(:name => 'New', :status_type => 'new_status')
Status.create!(:name => 'Scheduled', :status_type => 'scheduled_status')
Status.create!(:name => 'Complete', :status_type => 'complete_status')


sql = 'update sqlite_sequence set seq = 0'
ActiveRecord::Base.connection.execute(sql)

Appconfig.create!([
  {singleton_guard: 0, template: "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}", color_by_project: false, total_hours: 160, show_extra_color_box: false, sidebar: false, show_legend: false, shade_percentage: 10}
])

User.create!([
  {email: "admin@admin.com", :password => 'admin455', :password_confirmation => 'admin455', admin: true, name: "John Griffiths"},
  {email: "warrensutherland@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Warren Sutherland"},
  {email: "arularuldas@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Arul Aruldas"},
  {email: "stephenbrown@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Stephen Brown"},
  {email: "patilkenchangouda@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Patil Kenchangouda"},
  {email: "danielbrowne@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Daniel Browne"},
  {email: "tristanpurvis@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Tristan Purvis"},
  {email: "noweedmubarak@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Noweed Mubarak"},
  {email: "richardallen@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Richard Allen"},
  {email: "davidwitherington@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "David Witherington"},
  {email: "stuartblackwell@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Stuart Blackwell"},
  {email: "raminkorouei@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Ramin Korouei"},
  {email: "bryancoyne@admin.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Bryan Coyne"}
])
App.create!([
  {name: "CADIS(Edinburgh)", color: "#2ef0c5", description: "MarkIT EDM", text_color: "#FFFFFF"},
  {name: "CADIS(London)", color: "#4a86fb", description: "MarkIT EDM", text_color: "#000000"},
  {name: "Charles River", color: "#111111", description: "Charles River Investment Management System", text_color: "#FFFFFF"},
  {name: "CeDaR", color: "#f670e6", description: "CeDaR", text_color: "#000000"},
  {name: "Portree", color: "#d6d6d4", description: "Portree", text_color: "#000000"},
  {name: "Phoenix", color: "#0083cd", description: "Phoenix", text_color: "#FFFFFF"},
  {name: "Advantage", color: "#002663", description: "Advantage", text_color: "#FFFFFF"},
  {name: "ABI", color: "#bc0f3a", description: "Aberdeen Business Intelligence", text_color: "#FFFFFF"},
  {name: "RDW", color: "#f37735", description: "SWIP legacy data warehouse", text_color: "#000000"},
  {name: "NUTS", color: "#ffc425", description: "Unitised Trading", text_color: "#000000"},
  {name: "thinkFolio", color: "#4aa7db", description: "thinkFolio", text_color: "#000000"},
  {name: "PRAMS", color: "#00b159", description: "PRAMS", text_color: "#FFFFFF"},
  {name: "CML", color: "#a13b91", description: "CML", text_color: "#FFFFFF"}
])
Envlevel.create!([
  {name: "DEV", description: "Development Environment"},
  {name: "UAT", description: "User Testing"},
  {name: "SIT", description: "System Testing"},
  {name: "PROD-SUPPORT", description: "Production Support"}
])

Env.create!([
  {name: "DEV1", envlevel_id: 1, description: "Main Dev Env", notes: nil},
  {name: "DEV2", envlevel_id: 1, description: "CI", notes: nil},
  {name: "DEV3", envlevel_id: 1, description: "DEV Env", notes: nil},
  {name: "DEV4", envlevel_id: 4, description: "Prod Support", notes: nil},
  {name: "MOD", envlevel_id: 2, description: "Pre Prod", notes: nil},
  {name: "UAT Parallel", envlevel_id: 2, description: "User Testing", notes: nil},
  {name: "UAT Baseline", envlevel_id: 2, description: "User Testing", notes: nil},
  {name: "TST02", envlevel_id: 3, description: "System Testing", notes: nil},
  {name: "E2E", envlevel_id: 2, description: "End to End", notes: nil},
  {name: "E2E Baseline", envlevel_id: 2, description: "Production Baseline", notes: nil},
  {name: "Model 1", envlevel_id: 4, description: "Prod CR Copy", notes: nil},
  {name: "Model 2", envlevel_id: 4, description: "Prod CR Copy", notes: nil},
  {name: "Model 3", envlevel_id: 4, description: "Prod CR Copy", notes: nil}
])
Project.create!([
  {name: "Panther", description: "Panther", color: "#454545", text_color: "#FFFFFF"},
  {name: "QUANTS", description: "QUANTS migration", color: "#ff55ff", text_color: "#000000"},
  {name: "MAF", description: "MAF migration", color: "#d6a9d4", text_color: "#000000"},
  {name: "Production Support", description: "Production Support", color: "#3383cd", text_color: "#000000"},
  {name: "BAU", description: "BAU", color: "#002ab3", text_color: "#FFFFFF"},
  {name: "Global Point Attribution", description: "Global Point Attribution", color: "#bc1d3a", text_color: "#FFFFFF"},
  {name: "NUTS decommissioning", description: "NUTS decommissioning", color: "#f3a735", text_color: "#000000"}
])
System.create!([
  {env_id: 1, app_id: 1, refresh_date: "2015-07-08", refreshed_daily: false},
  {env_id: 1, app_id: 7, refresh_date: "2015-04-07", refreshed_daily: false},
  {env_id: 1, app_id: 4, refresh_date: "2015-07-08", refreshed_daily: false},
  {env_id: 1, app_id: 13, refresh_date: "2015-02-05", refreshed_daily: false},
  {env_id: 1, app_id: 10, refresh_date: nil, refreshed_daily: false},
  {env_id: 1, app_id: 6, refresh_date: "2015-07-08", refreshed_daily: false},
  {env_id: 1, app_id: 5, refresh_date: "2015-07-08", refreshed_daily: false},
  {env_id: 2, app_id: 1, refresh_date: "2015-06-24", refreshed_daily: false},
  {env_id: 2, app_id: 4, refresh_date: "2015-06-24", refreshed_daily: false},
  {env_id: 2, app_id: 6, refresh_date: "2015-06-24", refreshed_daily: false},
  {env_id: 2, app_id: 5, refresh_date: "2015-06-24", refreshed_daily: false},
  {env_id: 3, app_id: 1, refresh_date: "2015-06-05", refreshed_daily: false},
  {env_id: 4, app_id: 1, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 5, app_id: 7, refresh_date: "2015-06-10", refreshed_daily: false},
  {env_id: 5, app_id: 4, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 5, app_id: 1, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 5, app_id: 6, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 5, app_id: 5, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 5, app_id: 9, refresh_date: "2015-05-26", refreshed_daily: false},
  {env_id: 5, app_id: 11, refresh_date: "2015-08-07", refreshed_daily: false},
  {env_id: 11, app_id: 3, refresh_date: nil, refreshed_daily: true},
  {env_id: 12, app_id: 3, refresh_date: nil, refreshed_daily: true},
  {env_id: 13, app_id: 3, refresh_date: nil, refreshed_daily: true},
  {env_id: 8, app_id: 2, refresh_date: "2015-07-31", refreshed_daily: false},
  {env_id: 8, app_id: 3, refresh_date: "2015-07-31", refreshed_daily: false},
  {env_id: 9, app_id: 3, refresh_date: "2015-04-13", refreshed_daily: false},
  {env_id: 9, app_id: 2, refresh_date: nil, refreshed_daily: false},
  {env_id: 10, app_id: 2, refresh_date: "2015-08-14", refreshed_daily: false},
  {env_id: 10, app_id: 3, refresh_date: "2015-08-14", refreshed_daily: false},
  {env_id: 6, app_id: 3, refresh_date: nil, refreshed_daily: true},
  {env_id: 6, app_id: 2, refresh_date: nil, refreshed_daily: false},
  {env_id: 7, app_id: 3, refresh_date: "2015-04-17", refreshed_daily: false},
  {env_id: 7, app_id: 2, refresh_date: nil, refreshed_daily: false}
])
Envbooking.create!([
  {env_id: 1, project_id: 5, user_id: 1, start_date: "2015-08-01", end_date: "2015-08-31", app_id: 1, notes: nil},
  {env_id: 1, project_id: 5, user_id: 3, start_date: "2015-08-18", end_date: "2015-08-31", app_id: 5, notes: nil}
])
