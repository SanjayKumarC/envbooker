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

Status.create!([
  {name: "In Progress", status_type: "in_progress_status"},
  {name: "New", status_type: "new_status"},
  {name: "Scheduled", status_type: "scheduled_status"},
  {name: "Complete", status_type: "complete_status"}
])

sql = 'update sqlite_sequence set seq = 0'
ActiveRecord::Base.connection.execute(sql)

Appconfig.create!([
  {singleton_guard: 0, template: "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}", color_by_project: false, total_hours: 160, show_extra_color_box: false, sidebar: false, show_legend: false, shade_percentage: 10}
])

User.create!([
  {email: "john.griffiths@aberdeen-asset.com", password: 'admin455$!', password_confirmation: 'admin455$!', admin: true, name: "John Griffiths"},
  {email: "warren.sutherland@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Warren Sutherland"},
  {email: "arul.aruldas@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Arul Aruldas"},
  {email: "stephen.brown@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Stephen Brown"},
  {email: "patil.kenchangouda@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Patil Kenchangouda"},
  {email: "daniel.browne@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Daniel Browne"},
  {email: "tristan.purvis@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Tristan Purvis"},
  {email: "noweed.mubarak@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Noweed Mubarak"},
  {email: "richard.allen@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Richard Allen"},
  {email: "david.witherington@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "David Witherington"},
  {email: "stuart.blackwell@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Stuart Blackwell"},
  {email: "ramin.korouei@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Ramin Korouei"},
  {email: "bryan.coyne@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Bryan Coyne"},
  {email: "Mark.Ritchie@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Mark Ritchie"},
  {email: "Simon.Thompson@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Simon Thompson"},
  {email: "Kris.Fernando@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Kris Fernando"},
  {email: "Chri.sMurphy@aberdeen-asset.com", password: 'user1234', password_confirmation: 'user1234', admin: false, name: "Chris Murphy"},
  {email: "Mick.Charleton@aberdeen-asset.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Mick Charleton"},
  {email: "Stewart.Lawrie@aberdeen-asset.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Stewart Lawrie"},
  {email: "Michael.Jowitt@aberdeen-asset.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Michael Jowitt"},
  {email: "Donald.Macrae@aberdeen-asset.com", :password => 'user1234', :password_confirmation => 'user1234', admin: false, name: "Donald Macrae"}
])

App.create!([
  {name: "CADIS(Edinburgh)", color: "#2ef0c5", description: "MarkIT EDM", text_color: "#FFFFFF"},
  {name: "CADIS(London)", color: "#4a86fb", description: "MarkIT EDM", text_color: "#000000"},
  {name: "Charles River", color: "#2ff43d", description: "Charles River Investment Management System", text_color: "#000000"},
  {name: "CeDaR", color: "#f670e6", description: "CeDaR", text_color: "#000000"},
  {name: "Portree", color: "#d6d6d4", description: "Portree", text_color: "#000000"},
  {name: "Phoenix", color: "#0083cd", description: "Phoenix", text_color: "#FFFFFF"},
  {name: "Advantage", color: "#002663", description: "Advantage", text_color: "#FFFFFF"},
  {name: "ABI", color: "#bc0f3a", description: "Aberdeen Business Intelligence", text_color: "#FFFFFF"},
  {name: "RDW", color: "#f37735", description: "SWIP legacy data warehouse", text_color: "#000000"},
  {name: "NUTS", color: "#ffc425", description: "Unitised Trading", text_color: "#000000"},
  {name: "thinkFolio", color: "#4aa7db", description: "thinkFolio", text_color: "#000000"},
  {name: "PRAMS", color: "#00b159", description: "PRAMS", text_color: "#FFFFFF"},
  {name: "CML", color: "#a13b91", description: "CML", text_color: "#FFFFFF"},
  {name: "Cash and FX (old)", color: "#24f6ec", description: "Current Cash and FX App", text_color: "#000000"},
  {name: "Cash and FX (new)", color: "#a01fea", description: "Replacement Cash and FX App", text_color: "#000000"},
  {name: "Account Master", color: "#e8bff7", description: "Account Master", text_color: "#000000"}
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
  {name: "NUTS decommissioning", description: "NUTS decommissioning", color: "#f3a735", text_color: "#000000"},
  {name: "Account Master Enhancements", description: "Account Master Enhancements", color: "#cc3838", text_color: "#000000"},
  {name: "MSN", description: "Major Shareholding Notification", color: "#17dd8e", text_color: "#FFFFFF"},
  {name: "Fund Prices", description: "Fund Prices", color: "#18d0b0", text_color: "#FFFFFF"},
  {name: "Batch Remediation", description: "Batch Performance Enhancements", color: "#e6e827", text_color: "#000000"},
  {name: "New Cash and FX App", description: "New Cash and FX App", color: "#431690", text_color: "#FFFFFF"},
  {name: "CI", description: "Continuous Integration", color: "#f4b726", text_color: "#000000"}
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
  {env_id: 7, app_id: 3, refresh_date: "2015-04-17", refreshed_daily: false},
  {env_id: 9, app_id: 14, refresh_date: nil, refreshed_daily: false},
  {env_id: 8, app_id: 15, refresh_date: nil, refreshed_daily: false},
  {env_id: 8, app_id: 8, refresh_date: nil, refreshed_daily: false},
  {env_id: 7, app_id: 2, refresh_date: nil, refreshed_daily: false},
  {env_id: 7, app_id: 16, refresh_date: nil, refreshed_daily: false}
])

Envbooking.create!([
  {env_id: 8, project_id: 12, user_id: 14, start_date: "2015-03-01", end_date: "2015-09-30", app_id: 15, notes: nil},
  {env_id: 8, project_id: 7, user_id: 3, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 8, project_id: 7, user_id: 3, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 8, project_id: 7, user_id: 3, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 8, notes: nil},
  {env_id: 9, project_id: 5, user_id: 16, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 3, notes: nil},
  {env_id: 9, project_id: 5, user_id: 16, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 2, notes: nil},
  {env_id: 9, project_id: 6, user_id: 17, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 9, project_id: 3, user_id: 7, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 9, project_id: 3, user_id: 7, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 9, project_id: 11, user_id: 18, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 9, project_id: 10, user_id: 19, start_date: "2015-08-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 9, project_id: 5, user_id: 9, start_date: "2015-08-19", end_date: "2015-08-31", app_id: 14, notes: nil},
  {env_id: 9, project_id: 5, user_id: 8, start_date: "2015-08-19", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 10, project_id: 9, user_id: 6, start_date: "2015-07-01", end_date: "2015-12-31", app_id: 2, notes: nil},
  {env_id: 10, project_id: 9, user_id: 6, start_date: "2015-07-01", end_date: "2015-12-31", app_id: 3, notes: nil},
  {env_id: 7, project_id: 2, user_id: 2, start_date: "2015-04-01", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 7, project_id: 2, user_id: 2, start_date: "2015-04-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 9, project_id: 1, user_id: 15, start_date: "2015-07-01", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 9, project_id: 1, user_id: 15, start_date: "2015-07-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 7, project_id: 3, user_id: 2, start_date: "2015-03-01", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 7, project_id: 3, user_id: 2, start_date: "2015-03-01", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 7, project_id: 1, user_id: 18, start_date: "2015-08-19", end_date: "2015-09-30", app_id: 3, notes: nil},
  {env_id: 7, project_id: 8, user_id: 8, start_date: "2015-08-19", end_date: "2015-09-30", app_id: 2, notes: nil},
  {env_id: 7, project_id: 8, user_id: 8, start_date: "2015-08-19", end_date: "2015-09-30", app_id: 16, notes: nil},
  {env_id: 2, project_id: 13, user_id: 20, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 1, notes: nil},
  {env_id: 2, project_id: 13, user_id: 20, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 4, notes: nil},
  {env_id: 2, project_id: 13, user_id: 20, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 6, notes: nil},
  {env_id: 2, project_id: 13, user_id: 20, start_date: "2015-01-01", end_date: "2015-12-31", app_id: 5, notes: nil}
])
