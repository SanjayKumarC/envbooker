D, [2015-08-10T15:07:01.842334 #32735] DEBUG -- :   [1m[36mActiveRecord::SchemaMigration Load (0.4ms)[0m  [1mSELECT "schema_migrations".* FROM "schema_migrations"[0m
D, [2015-08-10T15:07:01.863134 #32735] DEBUG -- :   [1m[35m (2.4ms)[0m  update sqlite_sequence set seq = 0
D, [2015-08-10T15:07:01.865093 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.2ms)[0m  [1mSELECT "appconfigs".* FROM "appconfigs"[0m
D, [2015-08-10T15:07:01.874216 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:01.880476 #32735] DEBUG -- :   [1m[36mSQL (1.5ms)[0m  [1mDELETE FROM "appconfigs" WHERE "appconfigs"."id" = ?[0m  [["id", 1]]
D, [2015-08-10T15:07:01.883478 #32735] DEBUG -- :   [1m[35m (2.0ms)[0m  commit transaction
D, [2015-08-10T15:07:01.886827 #32735] DEBUG -- :   [1m[36m (0.4ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:01.891840 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "appconfigs" ("singleton_guard", "template", "total_hours", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["singleton_guard", 0], ["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["total_hours", 160], ["created_at", "2015-08-10 14:07:01.890083"], ["updated_at", "2015-08-10 14:07:01.890083"]]
D, [2015-08-10T15:07:01.893120 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:01.894004 #32735] DEBUG -- :   [1m[35mUser Load (0.2ms)[0m  SELECT "users".* FROM "users"
D, [2015-08-10T15:07:01.904543 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:01.927440 #32735] DEBUG -- :   [1m[35mEnvbooking Load (0.2ms)[0m  SELECT "envbookings".* FROM "envbookings" WHERE "envbookings"."user_id" = ?  [["user_id", 1]]
D, [2015-08-10T15:07:01.939931 #32735] DEBUG -- :   [1m[36mSQL (0.8ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 1]]
D, [2015-08-10T15:07:01.940607 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 2]]
D, [2015-08-10T15:07:01.941208 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 3]]
D, [2015-08-10T15:07:01.941752 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 5]]
D, [2015-08-10T15:07:01.942267 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 7]]
D, [2015-08-10T15:07:01.942794 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 8]]
D, [2015-08-10T15:07:01.943274 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 12]]
D, [2015-08-10T15:07:01.943941 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 14]]
D, [2015-08-10T15:07:01.944450 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 16]]
D, [2015-08-10T15:07:01.944998 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 21]]
D, [2015-08-10T15:07:01.945493 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 22]]
D, [2015-08-10T15:07:01.957336 #32735] DEBUG -- :   [1m[35mUserPreference Load (0.4ms)[0m  SELECT  "user_preferences".* FROM "user_preferences" WHERE "user_preferences"."user_id" = ? LIMIT 1  [["user_id", 1]]
D, [2015-08-10T15:07:01.973520 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mDELETE FROM "user_preferences" WHERE "user_preferences"."id" = ?[0m  [["id", 1]]
D, [2015-08-10T15:07:01.974361 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  DELETE FROM "users" WHERE "users"."id" = ?  [["id", 1]]
D, [2015-08-10T15:07:01.976122 #32735] DEBUG -- :   [1m[36m (1.6ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:01.976554 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:01.977586 #32735] DEBUG -- :   [1m[36mEnvbooking Load (0.2ms)[0m  [1mSELECT "envbookings".* FROM "envbookings" WHERE "envbookings"."user_id" = ?[0m  [["user_id", 2]]
D, [2015-08-10T15:07:01.979884 #32735] DEBUG -- :   [1m[35mSQL (0.6ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 4]]
D, [2015-08-10T15:07:01.980518 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 6]]
D, [2015-08-10T15:07:01.981055 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 9]]
D, [2015-08-10T15:07:01.981577 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 10]]
D, [2015-08-10T15:07:01.982058 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 11]]
D, [2015-08-10T15:07:01.982530 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 13]]
D, [2015-08-10T15:07:01.983030 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 15]]
D, [2015-08-10T15:07:01.983483 #32735] DEBUG -- :   [1m[36mSQL (0.0ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 17]]
D, [2015-08-10T15:07:01.983826 #32735] DEBUG -- :   [1m[35mSQL (0.0ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 18]]
D, [2015-08-10T15:07:01.984124 #32735] DEBUG -- :   [1m[36mSQL (0.0ms)[0m  [1mDELETE FROM "envbookings" WHERE "envbookings"."id" = ?[0m  [["id", 19]]
D, [2015-08-10T15:07:01.984436 #32735] DEBUG -- :   [1m[35mSQL (0.0ms)[0m  DELETE FROM "envbookings" WHERE "envbookings"."id" = ?  [["id", 20]]
D, [2015-08-10T15:07:01.985167 #32735] DEBUG -- :   [1m[36mUserPreference Load (0.1ms)[0m  [1mSELECT  "user_preferences".* FROM "user_preferences" WHERE "user_preferences"."user_id" = ? LIMIT 1[0m  [["user_id", 2]]
D, [2015-08-10T15:07:01.985972 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  DELETE FROM "user_preferences" WHERE "user_preferences"."id" = ?  [["id", 2]]
D, [2015-08-10T15:07:01.986687 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mDELETE FROM "users" WHERE "users"."id" = ?[0m  [["id", 2]]
D, [2015-08-10T15:07:01.988403 #32735] DEBUG -- :   [1m[35m (1.5ms)[0m  commit transaction
D, [2015-08-10T15:07:01.991148 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.001166 #32735] DEBUG -- :   [1m[35mUser Exists (0.2ms)[0m  SELECT  1 AS one FROM "users" WHERE "users"."email" = 'admin@admin.com' LIMIT 1
D, [2015-08-10T15:07:02.002889 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "users" ("email", "name", "admin", "encrypted_password", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["email", "admin@admin.com"], ["name", "John"], ["admin", "t"], ["encrypted_password", "$2a$04$mJMjkdU93AbhnOoVHI31U.Qgnrjiokw/xL0AGYaZIg8lMrTDpIuOa"], ["created_at", "2015-08-10 14:07:02.001565"], ["updated_at", "2015-08-10 14:07:02.001565"]]
D, [2015-08-10T15:07:02.008031 #32735] DEBUG -- :   [1m[35mAppconfig Load (0.1ms)[0m  SELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.009660 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 1], ["created_at", "2015-08-10 14:07:02.008737"], ["updated_at", "2015-08-10 14:07:02.008737"]]
D, [2015-08-10T15:07:02.011186 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.013168 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.014502 #32735] DEBUG -- :   [1m[35mUser Exists (0.2ms)[0m  SELECT  1 AS one FROM "users" WHERE "users"."email" = 'notadmin@admin.com' LIMIT 1
D, [2015-08-10T15:07:02.015795 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "users" ("email", "name", "encrypted_password", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["email", "notadmin@admin.com"], ["name", "Someone Else"], ["encrypted_password", "$2a$04$nq/r5nPjM18/OXJcE2hSgOgVl2Fs3PAz4EhPygYMEDN6hbmH8PR2O"], ["created_at", "2015-08-10 14:07:02.014733"], ["updated_at", "2015-08-10 14:07:02.014733"]]
D, [2015-08-10T15:07:02.016138 #32735] DEBUG -- :   [1m[35mAppconfig Load (0.1ms)[0m  SELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.017565 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mINSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 2], ["created_at", "2015-08-10 14:07:02.016641"], ["updated_at", "2015-08-10 14:07:02.016641"]]
D, [2015-08-10T15:07:02.019057 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.022919 #32735] DEBUG -- :   [1m[36mSQL (0.9ms)[0m  [1mDELETE FROM "envlevels"[0m
D, [2015-08-10T15:07:02.027369 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.028458 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'DEV' LIMIT 1[0m
D, [2015-08-10T15:07:02.029826 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envlevels" ("name", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "DEV"], ["description", "Development Environment"], ["created_at", "2015-08-10 14:07:02.028708"], ["updated_at", "2015-08-10 14:07:02.028708"]]
D, [2015-08-10T15:07:02.030963 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.031381 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.032231 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'UAT' LIMIT 1[0m
D, [2015-08-10T15:07:02.033330 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "envlevels" ("name", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "UAT"], ["description", "User Testing"], ["created_at", "2015-08-10 14:07:02.032407"], ["updated_at", "2015-08-10 14:07:02.032407"]]
D, [2015-08-10T15:07:02.034417 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.034861 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.035571 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'SIT' LIMIT 1[0m
D, [2015-08-10T15:07:02.036710 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envlevels" ("name", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "SIT"], ["description", "System Testing"], ["created_at", "2015-08-10 14:07:02.035749"], ["updated_at", "2015-08-10 14:07:02.035749"]]
D, [2015-08-10T15:07:02.037909 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.038336 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.039071 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'PROD-SUPPORT' LIMIT 1[0m
D, [2015-08-10T15:07:02.040253 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envlevels" ("name", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["name", "PROD-SUPPORT"], ["description", "Production Support"], ["created_at", "2015-08-10 14:07:02.039230"], ["updated_at", "2015-08-10 14:07:02.039230"]]
D, [2015-08-10T15:07:02.041443 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.047223 #32735] DEBUG -- :   [1m[35mSQL (1.0ms)[0m  DELETE FROM "envs"
D, [2015-08-10T15:07:02.048357 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.2ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "DEV"]]
D, [2015-08-10T15:07:02.055672 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.057526 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'DEV1' LIMIT 1[0m
D, [2015-08-10T15:07:02.059319 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "DEV1"], ["envlevel_id", 1], ["description", "Main Dev Env"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin"], ["created_at", "2015-08-10 14:07:02.057869"], ["updated_at", "2015-08-10 14:07:02.057869"]]
D, [2015-08-10T15:07:02.060833 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.061336 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "DEV"]]
D, [2015-08-10T15:07:02.062054 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.080200 #32735] DEBUG -- :   [1m[35mEnv Exists (0.2ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'DEV2' LIMIT 1
D, [2015-08-10T15:07:02.081359 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "DEV2"], ["envlevel_id", 1], ["description", "CI"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus"], ["created_at", "2015-08-10 14:07:02.080463"], ["updated_at", "2015-08-10 14:07:02.080463"]]
D, [2015-08-10T15:07:02.082604 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.083043 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "DEV"]]
D, [2015-08-10T15:07:02.083682 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.084677 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'DEV3' LIMIT 1[0m
D, [2015-08-10T15:07:02.085988 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "DEV3"], ["envlevel_id", 1], ["description", "DEV Env"], ["created_at", "2015-08-10 14:07:02.084964"], ["updated_at", "2015-08-10 14:07:02.084964"]]
D, [2015-08-10T15:07:02.087204 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.087596 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "PROD-SUPPORT"]]
D, [2015-08-10T15:07:02.088277 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.089047 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'DEV4' LIMIT 1
D, [2015-08-10T15:07:02.090202 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "DEV4"], ["envlevel_id", 4], ["description", "Prod Support"], ["notes", "lorem ipsum dolor sit amet consectetuer"], ["created_at", "2015-08-10 14:07:02.089318"], ["updated_at", "2015-08-10 14:07:02.089318"]]
D, [2015-08-10T15:07:02.091516 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.092017 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "UAT"]]
D, [2015-08-10T15:07:02.092687 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.093495 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'MOD' LIMIT 1[0m
D, [2015-08-10T15:07:02.094732 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "MOD"], ["envlevel_id", 2], ["description", "Pre Prod"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing"], ["created_at", "2015-08-10 14:07:02.093747"], ["updated_at", "2015-08-10 14:07:02.093747"]]
D, [2015-08-10T15:07:02.095888 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.096330 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.2ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "UAT"]]
D, [2015-08-10T15:07:02.096965 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.097744 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'UAT' LIMIT 1
D, [2015-08-10T15:07:02.098876 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "UAT"], ["envlevel_id", 2], ["description", "User Testing"], ["notes", "lorem ipsum dolor"], ["created_at", "2015-08-10 14:07:02.097979"], ["updated_at", "2015-08-10 14:07:02.097979"]]
D, [2015-08-10T15:07:02.100084 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.100524 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "SIT"]]
D, [2015-08-10T15:07:02.101117 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.101985 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'TST02' LIMIT 1[0m
D, [2015-08-10T15:07:02.103533 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "TST02"], ["envlevel_id", 3], ["description", "System Testing"], ["notes", "lorem ipsum dolor sit amet"], ["created_at", "2015-08-10 14:07:02.102196"], ["updated_at", "2015-08-10 14:07:02.102196"]]
D, [2015-08-10T15:07:02.104758 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.105140 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "UAT"]]
D, [2015-08-10T15:07:02.105761 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.106723 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'E2E' LIMIT 1
D, [2015-08-10T15:07:02.108133 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "E2E"], ["envlevel_id", 2], ["description", "End to End"], ["notes", "lorem ipsum dolor"], ["created_at", "2015-08-10 14:07:02.106985"], ["updated_at", "2015-08-10 14:07:02.106985"]]
D, [2015-08-10T15:07:02.109407 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.109830 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "UAT"]]
D, [2015-08-10T15:07:02.110504 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.111403 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Baseline' LIMIT 1[0m
D, [2015-08-10T15:07:02.112585 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Baseline"], ["envlevel_id", 2], ["description", "Production Baseline"], ["notes", "lorem"], ["created_at", "2015-08-10 14:07:02.111631"], ["updated_at", "2015-08-10 14:07:02.111631"]]
D, [2015-08-10T15:07:02.113794 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.114365 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.2ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "PROD-SUPPORT"]]
D, [2015-08-10T15:07:02.115054 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.115831 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Model 1' LIMIT 1
D, [2015-08-10T15:07:02.116949 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "Model 1"], ["envlevel_id", 4], ["description", "Prod CR Copy"], ["notes", "lorem ipsum dolor sit"], ["created_at", "2015-08-10 14:07:02.116040"], ["updated_at", "2015-08-10 14:07:02.116040"]]
D, [2015-08-10T15:07:02.118175 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.118573 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1[0m  [["name", "PROD-SUPPORT"]]
D, [2015-08-10T15:07:02.119194 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.120023 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Model 2' LIMIT 1[0m
D, [2015-08-10T15:07:02.121240 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Model 2"], ["envlevel_id", 4], ["description", "Prod CR Copy"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin"], ["created_at", "2015-08-10 14:07:02.120238"], ["updated_at", "2015-08-10 14:07:02.120238"]]
D, [2015-08-10T15:07:02.122397 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.122773 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."name" = ? LIMIT 1  [["name", "PROD-SUPPORT"]]
D, [2015-08-10T15:07:02.123433 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.124193 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Model 3' LIMIT 1
D, [2015-08-10T15:07:02.125292 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envs" ("name", "envlevel_id", "description", "notes", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "Model 3"], ["envlevel_id", 4], ["description", "Prod CR Copy"], ["notes", "lorem ipsum dolor"], ["created_at", "2015-08-10 14:07:02.124397"], ["updated_at", "2015-08-10 14:07:02.124397"]]
D, [2015-08-10T15:07:02.126620 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.135818 #32735] DEBUG -- :   [1m[36mSQL (1.7ms)[0m  [1mDELETE FROM "projects"[0m
D, [2015-08-10T15:07:02.149000 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.150202 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 0' LIMIT 1[0m
D, [2015-08-10T15:07:02.151696 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 0"], ["description", "Project 0"], ["color", "#454545"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.150541"], ["updated_at", "2015-08-10 14:07:02.150541"]]
D, [2015-08-10T15:07:02.153017 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.153571 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.154478 #32735] DEBUG -- :   [1m[36mProject Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 1' LIMIT 1[0m
D, [2015-08-10T15:07:02.155747 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 1"], ["description", "Project 1"], ["color", "#ff55ff"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.154647"], ["updated_at", "2015-08-10 14:07:02.154647"]]
D, [2015-08-10T15:07:02.157021 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.157539 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.158384 #32735] DEBUG -- :   [1m[36mProject Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 2' LIMIT 1[0m
D, [2015-08-10T15:07:02.159589 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 2"], ["description", "Project 2"], ["color", "#d6a9d4"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.158559"], ["updated_at", "2015-08-10 14:07:02.158559"]]
D, [2015-08-10T15:07:02.160864 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.161387 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.162165 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 3' LIMIT 1[0m
D, [2015-08-10T15:07:02.163644 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 3"], ["description", "Project 3"], ["color", "#3383cd"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.162335"], ["updated_at", "2015-08-10 14:07:02.162335"]]
D, [2015-08-10T15:07:02.164843 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.165379 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.166192 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 4' LIMIT 1[0m
D, [2015-08-10T15:07:02.167244 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 4"], ["description", "Project 4"], ["color", "#002ab3"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.166363"], ["updated_at", "2015-08-10 14:07:02.166363"]]
D, [2015-08-10T15:07:02.168458 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.168953 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.169780 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 5' LIMIT 1[0m
D, [2015-08-10T15:07:02.170961 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 5"], ["description", "Project 5"], ["color", "#bc1d3a"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.169941"], ["updated_at", "2015-08-10 14:07:02.169941"]]
D, [2015-08-10T15:07:02.172115 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.172683 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.173450 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 6' LIMIT 1[0m
D, [2015-08-10T15:07:02.174753 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 6"], ["description", "Project 6"], ["color", "#f3a735"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.173597"], ["updated_at", "2015-08-10 14:07:02.173597"]]
D, [2015-08-10T15:07:02.176006 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.176529 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.177423 #32735] DEBUG -- :   [1m[36mProject Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 7' LIMIT 1[0m
D, [2015-08-10T15:07:02.178596 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 7"], ["description", "Project 7"], ["color", "#fff425"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.177581"], ["updated_at", "2015-08-10 14:07:02.177581"]]
D, [2015-08-10T15:07:02.179695 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.180411 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.181147 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 8' LIMIT 1[0m
D, [2015-08-10T15:07:02.182203 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 8"], ["description", "Project 8"], ["color", "#4ac7db"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.181297"], ["updated_at", "2015-08-10 14:07:02.181297"]]
D, [2015-08-10T15:07:02.183277 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.183672 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.184407 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 9' LIMIT 1[0m
D, [2015-08-10T15:07:02.185773 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "projects" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)  [["name", "Project 9"], ["description", "Project 9"], ["color", "#00c159"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.184547"], ["updated_at", "2015-08-10 14:07:02.184547"]]
D, [2015-08-10T15:07:02.187028 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.198955 #32735] DEBUG -- :   [1m[35mSQL (3.5ms)[0m  DELETE FROM "apps"
D, [2015-08-10T15:07:02.204298 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.205811 #32735] DEBUG -- :   [1m[35mApp Exists (0.2ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 0' LIMIT 1
D, [2015-08-10T15:07:02.207541 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 0"], ["description", "App 0"], ["color", "#111111"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.205975"], ["updated_at", "2015-08-10 14:07:02.205975"]]
D, [2015-08-10T15:07:02.209197 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.209746 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.210718 #32735] DEBUG -- :   [1m[35mApp Exists (0.2ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 1' LIMIT 1
D, [2015-08-10T15:07:02.211851 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 1"], ["description", "App 1"], ["color", "#ffffff"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.210836"], ["updated_at", "2015-08-10 14:07:02.210836"]]
D, [2015-08-10T15:07:02.213011 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.213610 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.214451 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 2' LIMIT 1
D, [2015-08-10T15:07:02.215541 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 2"], ["description", "App 2"], ["color", "#d6d6d4"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.214561"], ["updated_at", "2015-08-10 14:07:02.214561"]]
D, [2015-08-10T15:07:02.216770 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.217299 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.218352 #32735] DEBUG -- :   [1m[35mApp Exists (0.2ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 3' LIMIT 1
D, [2015-08-10T15:07:02.219432 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 3"], ["description", "App 3"], ["color", "#0083cd"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.218466"], ["updated_at", "2015-08-10 14:07:02.218466"]]
D, [2015-08-10T15:07:02.220633 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.221159 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.221954 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 4' LIMIT 1
D, [2015-08-10T15:07:02.223140 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 4"], ["description", "App 4"], ["color", "#002663"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.222058"], ["updated_at", "2015-08-10 14:07:02.222058"]]
D, [2015-08-10T15:07:02.224293 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.224851 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.225675 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 5' LIMIT 1
D, [2015-08-10T15:07:02.226707 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 5"], ["description", "App 5"], ["color", "#bc0f3a"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.225777"], ["updated_at", "2015-08-10 14:07:02.225777"]]
D, [2015-08-10T15:07:02.227908 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.228399 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.229271 #32735] DEBUG -- :   [1m[35mApp Exists (0.2ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 6' LIMIT 1
D, [2015-08-10T15:07:02.230625 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 6"], ["description", "App 6"], ["color", "#f37735"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.229372"], ["updated_at", "2015-08-10 14:07:02.229372"]]
D, [2015-08-10T15:07:02.231899 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.232407 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.233276 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 7' LIMIT 1
D, [2015-08-10T15:07:02.234386 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 7"], ["description", "App 7"], ["color", "#ffc425"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.233394"], ["updated_at", "2015-08-10 14:07:02.233394"]]
D, [2015-08-10T15:07:02.235612 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.236102 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.236949 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 8' LIMIT 1
D, [2015-08-10T15:07:02.238009 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 8"], ["description", "App 8"], ["color", "#4aa7db"], ["text_color", "#000000"], ["created_at", "2015-08-10 14:07:02.237054"], ["updated_at", "2015-08-10 14:07:02.237054"]]
D, [2015-08-10T15:07:02.239174 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.239661 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.240492 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'App 9' LIMIT 1
D, [2015-08-10T15:07:02.241725 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "text_color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?)[0m  [["name", "App 9"], ["description", "App 9"], ["color", "#00b159"], ["text_color", "#FFFFFF"], ["created_at", "2015-08-10 14:07:02.240594"], ["updated_at", "2015-08-10 14:07:02.240594"]]
D, [2015-08-10T15:07:02.243015 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.244363 #32735] DEBUG -- :   [1m[36mSQL (0.9ms)[0m  [1mDELETE FROM "envbookings"[0m
D, [2015-08-10T15:07:02.244966 #32735] DEBUG -- :   [1m[35mEnv Load (0.2ms)[0m  SELECT "envs".* FROM "envs"
D, [2015-08-10T15:07:02.246558 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.247445 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.248290 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.248949 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.249321 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.249985 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.250544 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.250872 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.251437 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.256040 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.259194 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 1], ["project_id", 4], ["user_id", 2], ["start_date", "2015-03-26"], ["end_date", "2015-09-07"], ["app_id", 10], ["created_at", "2015-08-10 14:07:02.257596"], ["updated_at", "2015-08-10 14:07:02.257596"]]
D, [2015-08-10T15:07:02.260733 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.261428 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.261942 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.262232 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.262938 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.263349 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.263648 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.264202 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.264599 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.264860 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.265619 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.267734 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["project_id", 1], ["user_id", 2], ["start_date", "2015-04-30"], ["end_date", "2015-10-21"], ["app_id", 10], ["created_at", "2015-08-10 14:07:02.266472"], ["updated_at", "2015-08-10 14:07:02.266472"]]
D, [2015-08-10T15:07:02.269093 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.269961 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.270475 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.270799 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.271329 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.271716 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.271946 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.272495 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.272834 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.273082 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.273703 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.275489 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["project_id", 1], ["user_id", 1], ["start_date", "2015-07-17"], ["end_date", "2015-12-24"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.274422"], ["updated_at", "2015-08-10 14:07:02.274422"]]
D, [2015-08-10T15:07:02.276733 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.277374 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.277821 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.278062 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.278537 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.278844 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.279061 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.279622 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.279930 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.280238 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.280893 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.282647 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["project_id", 6], ["user_id", 2], ["start_date", "2015-07-21"], ["end_date", "2015-12-03"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.281556"], ["updated_at", "2015-08-10 14:07:02.281556"]]
D, [2015-08-10T15:07:02.284084 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.284702 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.285140 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.285384 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 8]]
D, [2015-08-10T15:07:02.285872 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.286275 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.286630 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.287189 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.287505 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.287713 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.288339 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.290088 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["project_id", 8], ["user_id", 1], ["start_date", "2015-02-16"], ["end_date", "2016-02-01"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.289029"], ["updated_at", "2015-08-10 14:07:02.289029"]]
D, [2015-08-10T15:07:02.291327 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.292067 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.292488 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.292777 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.293283 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.293671 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.293884 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.294366 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.294662 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.294892 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.295455 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.297282 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 6], ["project_id", 2], ["user_id", 1], ["start_date", "2015-06-19"], ["end_date", "2016-01-30"], ["app_id", 10], ["created_at", "2015-08-10 14:07:02.296191"], ["updated_at", "2015-08-10 14:07:02.296191"]]
D, [2015-08-10T15:07:02.298612 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.299266 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.299686 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.300083 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.300553 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.301031 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.301395 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.301999 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.302338 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.302548 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.303154 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.305104 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 7], ["project_id", 5], ["user_id", 1], ["start_date", "2015-02-21"], ["end_date", "2015-09-10"], ["app_id", 7], ["created_at", "2015-08-10 14:07:02.303989"], ["updated_at", "2015-08-10 14:07:02.303989"]]
D, [2015-08-10T15:07:02.306528 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.307270 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.307716 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.307980 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.308488 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.308833 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.309052 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.309548 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.309907 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.310119 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.310739 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.312478 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 8], ["project_id", 2], ["user_id", 2], ["start_date", "2015-08-10"], ["end_date", "2015-09-01"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.311416"], ["updated_at", "2015-08-10 14:07:02.311416"]]
D, [2015-08-10T15:07:02.313897 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.314568 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.315108 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.315502 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.316074 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.316448 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.316664 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.317155 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.317476 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.317676 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.318333 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.320112 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 9], ["project_id", 6], ["user_id", 2], ["start_date", "2015-06-07"], ["end_date", "2015-09-17"], ["app_id", 6], ["created_at", "2015-08-10 14:07:02.319010"], ["updated_at", "2015-08-10 14:07:02.319010"]]
D, [2015-08-10T15:07:02.321321 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.321968 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.322399 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.322640 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.323137 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.323448 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.323681 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.324142 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.324429 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.324639 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.325193 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.327087 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 10], ["project_id", 3], ["user_id", 2], ["start_date", "2015-05-20"], ["end_date", "2016-01-28"], ["app_id", 9], ["created_at", "2015-08-10 14:07:02.325870"], ["updated_at", "2015-08-10 14:07:02.325870"]]
D, [2015-08-10T15:07:02.328417 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.329049 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.329600 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.329941 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.330634 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.331242 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.331537 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.332084 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.332428 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.332638 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.333272 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.334948 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["project_id", 3], ["user_id", 2], ["start_date", "2015-06-15"], ["end_date", "2015-10-28"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.333938"], ["updated_at", "2015-08-10 14:07:02.333938"]]
D, [2015-08-10T15:07:02.336227 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.336858 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.337268 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.337532 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.338027 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.338489 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.338709 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.339206 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("apps"."id") FROM "apps"[0m
D, [2015-08-10T15:07:02.339501 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("apps"."id") FROM "apps"
D, [2015-08-10T15:07:02.339712 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.340284 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.342036 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 12], ["project_id", 3], ["user_id", 2], ["start_date", "2015-07-25"], ["end_date", "2015-08-23"], ["app_id", 7], ["created_at", "2015-08-10 14:07:02.340935"], ["updated_at", "2015-08-10 14:07:02.340935"]]
D, [2015-08-10T15:07:02.343332 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.343864 #32735] DEBUG -- :   [1m[36mApp Load (0.2ms)[0m  [1mSELECT "apps".* FROM "apps"[0m
D, [2015-08-10T15:07:02.344719 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.345088 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.345876 #32735] DEBUG -- :   [1m[35mEnv Load (0.2ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 11]]
D, [2015-08-10T15:07:02.346626 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.347050 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.347301 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.347759 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.348118 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.348357 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.349012 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.350932 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 11], ["project_id", 9], ["user_id", 2], ["start_date", "2015-06-07"], ["end_date", "2016-01-11"], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.349751"], ["updated_at", "2015-08-10 14:07:02.349751"]]
D, [2015-08-10T15:07:02.352237 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.352941 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.353366 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.353628 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.354119 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.354447 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.354698 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 8]]
D, [2015-08-10T15:07:02.355138 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.355479 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.355707 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.356354 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.358048 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 1], ["project_id", 8], ["user_id", 2], ["start_date", "2015-08-10"], ["end_date", "2015-12-06"], ["app_id", 2], ["created_at", "2015-08-10 14:07:02.357059"], ["updated_at", "2015-08-10 14:07:02.357059"]]
D, [2015-08-10T15:07:02.359826 #32735] DEBUG -- :   [1m[36m (1.1ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.360874 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.361842 #32735] DEBUG -- :   [1m[36m (0.3ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.363101 #32735] DEBUG -- :   [1m[35mEnv Load (0.5ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 12]]
D, [2015-08-10T15:07:02.365555 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.366143 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.366770 #32735] DEBUG -- :   [1m[36mProject Load (0.2ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.369606 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.371875 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.373696 #32735] DEBUG -- :   [1m[35mUser Load (0.7ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.377309 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.379433 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 12], ["project_id", 5], ["user_id", 1], ["start_date", "2015-02-13"], ["end_date", "2015-08-11"], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.378238"], ["updated_at", "2015-08-10 14:07:02.378238"]]
D, [2015-08-10T15:07:02.380883 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.381572 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.382018 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.382322 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 10]]
D, [2015-08-10T15:07:02.382870 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.383276 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.383520 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.384065 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.384457 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.384738 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.385441 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.387294 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 10], ["project_id", 6], ["user_id", 1], ["start_date", "2015-04-01"], ["end_date", "2015-11-13"], ["app_id", 4], ["created_at", "2015-08-10 14:07:02.386185"], ["updated_at", "2015-08-10 14:07:02.386185"]]
D, [2015-08-10T15:07:02.388432 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.389023 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.389425 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.389732 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:02.390702 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.391489 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.391863 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.392817 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.393494 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.393929 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.394940 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.397670 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 3], ["project_id", 9], ["user_id", 1], ["start_date", "2015-02-15"], ["end_date", "2015-08-29"], ["app_id", 5], ["created_at", "2015-08-10 14:07:02.395771"], ["updated_at", "2015-08-10 14:07:02.395771"]]
D, [2015-08-10T15:07:02.402303 #32735] DEBUG -- :   [1m[36m (2.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.404467 #32735] DEBUG -- :   [1m[35m (0.4ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.405046 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.405343 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.405938 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.406326 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.406635 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.407227 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.407636 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.408068 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.409259 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.411896 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 2], ["project_id", 4], ["user_id", 1], ["start_date", "2015-06-16"], ["end_date", "2015-09-20"], ["app_id", 6], ["created_at", "2015-08-10 14:07:02.410378"], ["updated_at", "2015-08-10 14:07:02.410378"]]
D, [2015-08-10T15:07:02.413288 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.414029 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.414505 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.414780 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.415300 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.415652 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.415896 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 8]]
D, [2015-08-10T15:07:02.416358 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.416668 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.416872 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.417484 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.419241 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 2], ["project_id", 8], ["user_id", 1], ["start_date", "2015-04-04"], ["end_date", "2015-09-06"], ["app_id", 7], ["created_at", "2015-08-10 14:07:02.418143"], ["updated_at", "2015-08-10 14:07:02.418143"]]
D, [2015-08-10T15:07:02.421608 #32735] DEBUG -- :   [1m[36m (1.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.422667 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.423173 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.423463 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 8]]
D, [2015-08-10T15:07:02.424102 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.424499 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.424722 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.425332 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.425693 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.425920 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.426560 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.428247 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 8], ["project_id", 7], ["user_id", 1], ["start_date", "2015-03-03"], ["end_date", "2016-01-14"], ["app_id", 8], ["created_at", "2015-08-10 14:07:02.427248"], ["updated_at", "2015-08-10 14:07:02.427248"]]
D, [2015-08-10T15:07:02.429952 #32735] DEBUG -- :   [1m[36m (1.3ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.430680 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.431112 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.431444 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:02.431957 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.432314 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.432528 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.433151 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.433496 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.433714 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.434358 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.436166 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 7], ["project_id", 10], ["user_id", 1], ["start_date", "2015-06-03"], ["end_date", "2015-11-21"], ["app_id", 9], ["created_at", "2015-08-10 14:07:02.435059"], ["updated_at", "2015-08-10 14:07:02.435059"]]
D, [2015-08-10T15:07:02.437404 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.438072 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MIN("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.438524 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.438779 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 10]]
D, [2015-08-10T15:07:02.439565 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("projects"."id") FROM "projects"[0m
D, [2015-08-10T15:07:02.439989 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("projects"."id") FROM "projects"
D, [2015-08-10T15:07:02.440238 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.440731 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MIN("users"."id") FROM "users"
D, [2015-08-10T15:07:02.441032 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MAX("users"."id") FROM "users"[0m
D, [2015-08-10T15:07:02.441270 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.441883 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.443838 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "envbookings" ("env_id", "project_id", "user_id", "start_date", "end_date", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["env_id", 10], ["project_id", 9], ["user_id", 2], ["start_date", "2015-07-09"], ["end_date", "2015-08-23"], ["app_id", 10], ["created_at", "2015-08-10 14:07:02.442572"], ["updated_at", "2015-08-10 14:07:02.442572"]]
D, [2015-08-10T15:07:02.445194 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.448852 #32735] DEBUG -- :   [1m[35mSQL (1.1ms)[0m  DELETE FROM "downtimes"
D, [2015-08-10T15:07:02.449573 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.450087 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.450398 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.457188 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.458872 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 6], ["date", "2015-05-21"], ["notes", ""], ["hours", 8], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.457630"], ["updated_at", "2015-08-10 14:07:02.457630"]]
D, [2015-08-10T15:07:02.463546 #32735] DEBUG -- :   [1m[35m (4.3ms)[0m  commit transaction
D, [2015-08-10T15:07:02.464218 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.464613 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.464906 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.465485 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.467055 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-03-26"], ["notes", ""], ["hours", 1], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.465905"], ["updated_at", "2015-08-10 14:07:02.465905"]]
D, [2015-08-10T15:07:02.468286 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.468940 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.469357 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.469638 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:02.470408 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.471785 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 12], ["date", "2015-07-21"], ["notes", ""], ["hours", 1], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.470758"], ["updated_at", "2015-08-10 14:07:02.470758"]]
D, [2015-08-10T15:07:02.473067 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.473713 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.474151 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.474433 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.474955 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.476375 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 10], ["date", "2015-03-01"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.475298"], ["updated_at", "2015-08-10 14:07:02.475298"]]
D, [2015-08-10T15:07:02.477502 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.478196 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.478641 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.478958 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.479483 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.480864 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-03-06"], ["notes", ""], ["hours", 1], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.479799"], ["updated_at", "2015-08-10 14:07:02.479799"]]
D, [2015-08-10T15:07:02.482211 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.482918 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.483331 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.483601 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.484120 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.485463 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 9], ["date", "2015-05-24"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.484444"], ["updated_at", "2015-08-10 14:07:02.484444"]]
D, [2015-08-10T15:07:02.486602 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.487233 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.487651 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.487899 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.488422 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.489746 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-03-17"], ["notes", ""], ["hours", 2], ["reason", "Batch not complete"], ["created_at", "2015-08-10 14:07:02.488731"], ["updated_at", "2015-08-10 14:07:02.488731"]]
D, [2015-08-10T15:07:02.490837 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.491497 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.491905 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.492154 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.492686 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.494359 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 6], ["date", "2015-06-01"], ["notes", ""], ["hours", 0], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.493161"], ["updated_at", "2015-08-10 14:07:02.493161"]]
D, [2015-08-10T15:07:02.495536 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.496152 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.496599 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.496965 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.497540 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.498855 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-06-09"], ["notes", ""], ["hours", 5], ["reason", "Batch not complete"], ["created_at", "2015-08-10 14:07:02.497867"], ["updated_at", "2015-08-10 14:07:02.497867"]]
D, [2015-08-10T15:07:02.500034 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.500619 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.501105 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.501364 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:02.501940 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.503238 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["date", "2015-03-11"], ["notes", ""], ["hours", 2], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.502263"], ["updated_at", "2015-08-10 14:07:02.502263"]]
D, [2015-08-10T15:07:02.504593 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.505399 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.505912 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.506183 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.506788 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.508348 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-04-28"], ["notes", ""], ["hours", 4], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.507203"], ["updated_at", "2015-08-10 14:07:02.507203"]]
D, [2015-08-10T15:07:02.509494 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.510128 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.510574 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.510822 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.511378 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.512731 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-08-06"], ["notes", ""], ["hours", 7], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.511701"], ["updated_at", "2015-08-10 14:07:02.511701"]]
D, [2015-08-10T15:07:02.513914 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.514519 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.514989 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.515244 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.515774 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.517104 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 9], ["date", "2015-07-04"], ["notes", ""], ["hours", 6], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.516081"], ["updated_at", "2015-08-10 14:07:02.516081"]]
D, [2015-08-10T15:07:02.518200 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.518777 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.519253 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.519664 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.520274 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.521658 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-07-06"], ["notes", ""], ["hours", 3], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.520600"], ["updated_at", "2015-08-10 14:07:02.520600"]]
D, [2015-08-10T15:07:02.522805 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.523445 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.523896 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.524285 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.524803 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.526172 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-08-05"], ["notes", ""], ["hours", 3], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.525167"], ["updated_at", "2015-08-10 14:07:02.525167"]]
D, [2015-08-10T15:07:02.527381 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.528018 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.528464 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.528712 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.529227 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.530726 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-05-17"], ["notes", ""], ["hours", 9], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.529579"], ["updated_at", "2015-08-10 14:07:02.529579"]]
D, [2015-08-10T15:07:02.532052 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.532734 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.533140 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.533482 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.534024 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.535406 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 7], ["date", "2015-07-15"], ["notes", ""], ["hours", 4], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.534355"], ["updated_at", "2015-08-10 14:07:02.534355"]]
D, [2015-08-10T15:07:02.536794 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.537428 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.537843 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.538139 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.538662 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.540019 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-07-30"], ["notes", ""], ["hours", 5], ["reason", "Batch not complete"], ["created_at", "2015-08-10 14:07:02.538982"], ["updated_at", "2015-08-10 14:07:02.538982"]]
D, [2015-08-10T15:07:02.541131 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.541770 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.542242 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.542481 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.543205 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.544652 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-06-18"], ["notes", ""], ["hours", 5], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.543636"], ["updated_at", "2015-08-10 14:07:02.543636"]]
D, [2015-08-10T15:07:02.545817 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.546456 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.546923 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.547262 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.547824 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.549176 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-06-11"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.548185"], ["updated_at", "2015-08-10 14:07:02.548185"]]
D, [2015-08-10T15:07:02.550343 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.550960 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.551407 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.551644 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.552164 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.553458 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-05-27"], ["notes", ""], ["hours", 3], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.552475"], ["updated_at", "2015-08-10 14:07:02.552475"]]
D, [2015-08-10T15:07:02.554520 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.555263 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.555763 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.556186 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.556729 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.558003 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 10], ["date", "2015-02-20"], ["notes", ""], ["hours", 6], ["reason", "Batch not complete"], ["created_at", "2015-08-10 14:07:02.557040"], ["updated_at", "2015-08-10 14:07:02.557040"]]
D, [2015-08-10T15:07:02.559230 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.559849 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.560294 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.560557 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.561130 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.562449 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-05-04"], ["notes", ""], ["hours", 8], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.561459"], ["updated_at", "2015-08-10 14:07:02.561459"]]
D, [2015-08-10T15:07:02.563652 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.564497 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.565196 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.565587 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:02.566432 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.571464 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["date", "2015-02-15"], ["notes", ""], ["hours", 5], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.567489"], ["updated_at", "2015-08-10 14:07:02.567489"]]
D, [2015-08-10T15:07:02.575604 #32735] DEBUG -- :   [1m[35m (2.5ms)[0m  commit transaction
D, [2015-08-10T15:07:02.578767 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.582609 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.583643 #32735] DEBUG -- :   [1m[36mEnv Load (0.2ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:02.584405 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.586174 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 10], ["date", "2015-06-17"], ["notes", ""], ["hours", 8], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.584882"], ["updated_at", "2015-08-10 14:07:02.584882"]]
D, [2015-08-10T15:07:02.587274 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.587972 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.588401 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.588684 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.589477 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.590871 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 7], ["date", "2015-08-01"], ["notes", ""], ["hours", 6], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.589850"], ["updated_at", "2015-08-10 14:07:02.589850"]]
D, [2015-08-10T15:07:02.592011 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.592689 #32735] DEBUG -- :   [1m[36m (0.3ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.593333 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.593703 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.594752 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.597315 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-03-29"], ["notes", ""], ["hours", 8], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.595374"], ["updated_at", "2015-08-10 14:07:02.595374"]]
D, [2015-08-10T15:07:02.598909 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.601246 #32735] DEBUG -- :   [1m[36m (0.5ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.604130 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.606053 #32735] DEBUG -- :   [1m[36mEnv Load (0.7ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.607426 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.609739 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 6], ["date", "2015-03-08"], ["notes", ""], ["hours", 9], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.608048"], ["updated_at", "2015-08-10 14:07:02.608048"]]
D, [2015-08-10T15:07:02.611131 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.612327 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.612946 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.613254 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:02.614050 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.616074 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["date", "2015-03-27"], ["notes", ""], ["hours", 7], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.614471"], ["updated_at", "2015-08-10 14:07:02.614471"]]
D, [2015-08-10T15:07:02.617560 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.618198 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.618639 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.618912 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.619421 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.620883 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-03-14"], ["notes", ""], ["hours", 6], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.619738"], ["updated_at", "2015-08-10 14:07:02.619738"]]
D, [2015-08-10T15:07:02.622118 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.622763 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.623182 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.623447 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.623952 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.625482 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-03-12"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.624443"], ["updated_at", "2015-08-10 14:07:02.624443"]]
D, [2015-08-10T15:07:02.626641 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.627272 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.627704 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.627973 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:02.628561 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.629933 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 9], ["date", "2015-05-27"], ["notes", ""], ["hours", 6], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.628906"], ["updated_at", "2015-08-10 14:07:02.628906"]]
D, [2015-08-10T15:07:02.631193 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.632082 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.632518 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.632816 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:02.633377 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.634754 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 12], ["date", "2015-05-23"], ["notes", ""], ["hours", 6], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.633727"], ["updated_at", "2015-08-10 14:07:02.633727"]]
D, [2015-08-10T15:07:02.635906 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.636568 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.637798 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.638099 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.638724 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.640017 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 6], ["date", "2015-08-01"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.639044"], ["updated_at", "2015-08-10 14:07:02.639044"]]
D, [2015-08-10T15:07:02.641212 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.642211 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.642718 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.643024 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.643544 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.645153 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-07-18"], ["notes", ""], ["hours", 3], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.643963"], ["updated_at", "2015-08-10 14:07:02.643963"]]
D, [2015-08-10T15:07:02.646312 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.646905 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.647347 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.647595 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.648125 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.649616 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-04-09"], ["notes", ""], ["hours", 4], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.648457"], ["updated_at", "2015-08-10 14:07:02.648457"]]
D, [2015-08-10T15:07:02.650695 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.651309 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.651779 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.652040 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:02.652602 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.653911 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["date", "2015-03-24"], ["notes", ""], ["hours", 0], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.652929"], ["updated_at", "2015-08-10 14:07:02.652929"]]
D, [2015-08-10T15:07:02.655014 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.655698 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.656234 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.656537 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.657066 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.658445 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-04-28"], ["notes", ""], ["hours", 4], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.657391"], ["updated_at", "2015-08-10 14:07:02.657391"]]
D, [2015-08-10T15:07:02.659593 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.660188 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.660598 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.660845 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.661334 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.662650 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-07-01"], ["notes", ""], ["hours", 5], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.661641"], ["updated_at", "2015-08-10 14:07:02.661641"]]
D, [2015-08-10T15:07:02.663950 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.664612 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.665053 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.665306 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.666109 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.667903 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 3], ["date", "2015-04-06"], ["notes", ""], ["hours", 5], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.666653"], ["updated_at", "2015-08-10 14:07:02.666653"]]
D, [2015-08-10T15:07:02.669302 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.669934 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.670403 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.670645 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.671193 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.672604 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-04-10"], ["notes", ""], ["hours", 0], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.671515"], ["updated_at", "2015-08-10 14:07:02.671515"]]
D, [2015-08-10T15:07:02.673752 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.674377 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.674828 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.675174 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:02.675747 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.677048 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 11], ["date", "2015-04-30"], ["notes", ""], ["hours", 4], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.676077"], ["updated_at", "2015-08-10 14:07:02.676077"]]
D, [2015-08-10T15:07:02.678186 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.678823 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.679264 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.679546 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:02.680037 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.681797 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 12], ["date", "2015-07-17"], ["notes", ""], ["hours", 0], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.680686"], ["updated_at", "2015-08-10 14:07:02.680686"]]
D, [2015-08-10T15:07:02.682929 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.683581 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.684026 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.684292 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.684796 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.686086 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 5], ["date", "2015-03-25"], ["notes", ""], ["hours", 0], ["reason", "Out for refresh"], ["created_at", "2015-08-10 14:07:02.685130"], ["updated_at", "2015-08-10 14:07:02.685130"]]
D, [2015-08-10T15:07:02.687344 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.687960 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.688399 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.688647 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.689195 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.690520 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-04-24"], ["notes", ""], ["hours", 5], ["reason", "Batch not complete"], ["created_at", "2015-08-10 14:07:02.689518"], ["updated_at", "2015-08-10 14:07:02.689518"]]
D, [2015-08-10T15:07:02.691819 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.692689 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.693165 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.693411 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:02.693971 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.695301 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 7], ["date", "2015-03-25"], ["notes", ""], ["hours", 1], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.694289"], ["updated_at", "2015-08-10 14:07:02.694289"]]
D, [2015-08-10T15:07:02.696508 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.697106 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.697566 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.697833 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:02.698474 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.699942 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 12], ["date", "2015-07-13"], ["notes", ""], ["hours", 5], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.698850"], ["updated_at", "2015-08-10 14:07:02.698850"]]
D, [2015-08-10T15:07:02.701337 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.702088 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.702598 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.702876 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.703459 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.704918 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-03-20"], ["notes", ""], ["hours", 7], ["reason", "Access Problems"], ["created_at", "2015-08-10 14:07:02.703885"], ["updated_at", "2015-08-10 14:07:02.703885"]]
D, [2015-08-10T15:07:02.708410 #32735] DEBUG -- :   [1m[35m (3.1ms)[0m  commit transaction
D, [2015-08-10T15:07:02.709105 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.709567 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.709951 #32735] DEBUG -- :   [1m[36mEnv Load (0.2ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.710603 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.712011 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 2], ["date", "2015-08-10"], ["notes", ""], ["hours", 3], ["reason", "Other"], ["created_at", "2015-08-10 14:07:02.710941"], ["updated_at", "2015-08-10 14:07:02.710941"]]
D, [2015-08-10T15:07:02.713188 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.713815 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT MIN("envs"."id") FROM "envs"[0m
D, [2015-08-10T15:07:02.714367 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT MAX("envs"."id") FROM "envs"
D, [2015-08-10T15:07:02.714644 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.715190 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.716501 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "downtimes" ("env_id", "date", "notes", "hours", "reason", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)[0m  [["env_id", 4], ["date", "2015-06-10"], ["notes", ""], ["hours", 7], ["reason", "Someone else using"], ["created_at", "2015-08-10 14:07:02.715531"], ["updated_at", "2015-08-10 14:07:02.715531"]]
D, [2015-08-10T15:07:02.717538 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:02.722357 #32735] DEBUG -- :   [1m[36mSQL (1.2ms)[0m  [1mDELETE FROM "systems"[0m
D, [2015-08-10T15:07:02.723007 #32735] DEBUG -- :   [1m[35mEnv Load (0.2ms)[0m  SELECT "envs".* FROM "envs"
D, [2015-08-10T15:07:02.724022 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.729763 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.731194 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.732906 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 1 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.734403 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 1], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.733387"], ["updated_at", "2015-08-10 14:07:02.733387"]]
D, [2015-08-10T15:07:02.735601 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.736196 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.736681 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.737688 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 1 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.739053 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 1], ["app_id", 2], ["refresh_date", "2015-08-06"], ["created_at", "2015-08-10 14:07:02.738041"], ["updated_at", "2015-08-10 14:07:02.738041"]]
D, [2015-08-10T15:07:02.740204 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.741031 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT COUNT(*) FROM "apps"
D, [2015-08-10T15:07:02.741512 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.741862 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.742760 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 2 AND "systems"."app_id" = 1) LIMIT 1[0m
D, [2015-08-10T15:07:02.744013 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 2], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.743087"], ["updated_at", "2015-08-10 14:07:02.743087"]]
D, [2015-08-10T15:07:02.745317 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.745932 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.746344 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.747153 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 2 AND "systems"."app_id" = 2) LIMIT 1
D, [2015-08-10T15:07:02.748486 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 2], ["app_id", 2], ["refresh_date", "2015-08-02"], ["created_at", "2015-08-10 14:07:02.747499"], ["updated_at", "2015-08-10 14:07:02.747499"]]
D, [2015-08-10T15:07:02.749781 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.750474 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.750947 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.751308 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.752208 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 3 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.753383 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 3], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.752514"], ["updated_at", "2015-08-10 14:07:02.752514"]]
D, [2015-08-10T15:07:02.754509 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.755076 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.755455 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.756561 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 3 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.757890 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 3], ["app_id", 2], ["refresh_date", "2015-08-04"], ["created_at", "2015-08-10 14:07:02.756948"], ["updated_at", "2015-08-10 14:07:02.756948"]]
D, [2015-08-10T15:07:02.759068 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.759784 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT COUNT(*) FROM "apps"
D, [2015-08-10T15:07:02.760250 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.760561 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:02.761448 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 1) LIMIT 1[0m
D, [2015-08-10T15:07:02.762603 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 4], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.761738"], ["updated_at", "2015-08-10 14:07:02.761738"]]
D, [2015-08-10T15:07:02.763744 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.764300 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.764703 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.765599 #32735] DEBUG -- :   [1m[35mSystem Exists (0.2ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 2) LIMIT 1
D, [2015-08-10T15:07:02.767291 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 4], ["app_id", 2], ["refresh_date", "2015-06-02"], ["created_at", "2015-08-10 14:07:02.765957"], ["updated_at", "2015-08-10 14:07:02.765957"]]
D, [2015-08-10T15:07:02.769464 #32735] DEBUG -- :   [1m[35m (1.1ms)[0m  commit transaction
D, [2015-08-10T15:07:02.772209 #32735] DEBUG -- :   [1m[36mApp Load (0.6ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.773108 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.774203 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 3) LIMIT 1[0m
D, [2015-08-10T15:07:02.777805 #32735] DEBUG -- :   [1m[35mSQL (1.1ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 4], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.774615"], ["updated_at", "2015-08-10 14:07:02.774615"]]
D, [2015-08-10T15:07:02.784902 #32735] DEBUG -- :   [1m[36m (3.3ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.786658 #32735] DEBUG -- :   [1m[35mApp Load (0.2ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:02.787170 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.788083 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 4) LIMIT 1
D, [2015-08-10T15:07:02.789462 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 4], ["app_id", 4], ["refresh_date", "2015-07-02"], ["created_at", "2015-08-10 14:07:02.788457"], ["updated_at", "2015-08-10 14:07:02.788457"]]
D, [2015-08-10T15:07:02.790674 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.791313 #32735] DEBUG -- :   [1m[36mApp Load (0.2ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.791716 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.792546 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 5) LIMIT 1[0m
D, [2015-08-10T15:07:02.793750 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 4], ["app_id", 5], ["created_at", "2015-08-10 14:07:02.792860"], ["updated_at", "2015-08-10 14:07:02.792860"]]
D, [2015-08-10T15:07:02.795026 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.795588 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:02.796154 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.797193 #32735] DEBUG -- :   [1m[35mSystem Exists (0.2ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 4 AND "systems"."app_id" = 6) LIMIT 1
D, [2015-08-10T15:07:02.799527 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 4], ["app_id", 6], ["refresh_date", "2015-08-02"], ["created_at", "2015-08-10 14:07:02.797614"], ["updated_at", "2015-08-10 14:07:02.797614"]]
D, [2015-08-10T15:07:02.805099 #32735] DEBUG -- :   [1m[35m (4.6ms)[0m  commit transaction
D, [2015-08-10T15:07:02.810067 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.811103 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.811533 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.812556 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.813838 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 5], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.812895"], ["updated_at", "2015-08-10 14:07:02.812895"]]
D, [2015-08-10T15:07:02.815060 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.815905 #32735] DEBUG -- :   [1m[36mApp Load (0.2ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.816623 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.817971 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.819406 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 5], ["app_id", 2], ["refresh_date", "2015-07-27"], ["created_at", "2015-08-10 14:07:02.818378"], ["updated_at", "2015-08-10 14:07:02.818378"]]
D, [2015-08-10T15:07:02.820690 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.821290 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:02.821701 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.822574 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 3) LIMIT 1
D, [2015-08-10T15:07:02.823944 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 5], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.822890"], ["updated_at", "2015-08-10 14:07:02.822890"]]
D, [2015-08-10T15:07:02.825345 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.826016 #32735] DEBUG -- :   [1m[36mApp Load (0.2ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.826436 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.827334 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 4) LIMIT 1[0m
D, [2015-08-10T15:07:02.828720 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 5], ["app_id", 4], ["refresh_date", "2015-06-05"], ["created_at", "2015-08-10 14:07:02.827685"], ["updated_at", "2015-08-10 14:07:02.827685"]]
D, [2015-08-10T15:07:02.829957 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.830534 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:02.830923 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.831781 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 5) LIMIT 1
D, [2015-08-10T15:07:02.833190 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 5], ["app_id", 5], ["created_at", "2015-08-10 14:07:02.832146"], ["updated_at", "2015-08-10 14:07:02.832146"]]
D, [2015-08-10T15:07:02.834384 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.834994 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.835420 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.836470 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 6) LIMIT 1[0m
D, [2015-08-10T15:07:02.837968 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 5], ["app_id", 6], ["refresh_date", "2015-07-13"], ["created_at", "2015-08-10 14:07:02.836910"], ["updated_at", "2015-08-10 14:07:02.836910"]]
D, [2015-08-10T15:07:02.839084 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.839683 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:02.840064 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.841020 #32735] DEBUG -- :   [1m[35mSystem Exists (0.2ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 7) LIMIT 1
D, [2015-08-10T15:07:02.842396 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 5], ["app_id", 7], ["created_at", "2015-08-10 14:07:02.841356"], ["updated_at", "2015-08-10 14:07:02.841356"]]
D, [2015-08-10T15:07:02.843618 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.844218 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 8]]
D, [2015-08-10T15:07:02.844678 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.845664 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 8) LIMIT 1[0m
D, [2015-08-10T15:07:02.847259 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 5], ["app_id", 8], ["refresh_date", "2015-07-24"], ["created_at", "2015-08-10 14:07:02.846125"], ["updated_at", "2015-08-10 14:07:02.846125"]]
D, [2015-08-10T15:07:02.848614 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.849454 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 9]]
D, [2015-08-10T15:07:02.849983 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.851150 #32735] DEBUG -- :   [1m[35mSystem Exists (0.2ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 5 AND "systems"."app_id" = 9) LIMIT 1
D, [2015-08-10T15:07:02.852594 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 5], ["app_id", 9], ["created_at", "2015-08-10 14:07:02.851585"], ["updated_at", "2015-08-10 14:07:02.851585"]]
D, [2015-08-10T15:07:02.853785 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.854500 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.855006 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.855354 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.856276 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 6 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.857490 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 6], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.856606"], ["updated_at", "2015-08-10 14:07:02.856606"]]
D, [2015-08-10T15:07:02.858725 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.859586 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.860132 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.860493 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.861577 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 7 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.862861 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 7], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.861899"], ["updated_at", "2015-08-10 14:07:02.861899"]]
D, [2015-08-10T15:07:02.864097 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.864709 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.865126 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.866005 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 7 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.867350 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 7], ["app_id", 2], ["refresh_date", "2015-07-19"], ["created_at", "2015-08-10 14:07:02.866355"], ["updated_at", "2015-08-10 14:07:02.866355"]]
D, [2015-08-10T15:07:02.868643 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.869225 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:02.869870 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.870964 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 7 AND "systems"."app_id" = 3) LIMIT 1
D, [2015-08-10T15:07:02.872527 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 7], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.871366"], ["updated_at", "2015-08-10 14:07:02.871366"]]
D, [2015-08-10T15:07:02.873821 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.874447 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.874970 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.875925 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 7 AND "systems"."app_id" = 4) LIMIT 1[0m
D, [2015-08-10T15:07:02.877546 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 7], ["app_id", 4], ["refresh_date", "2015-06-13"], ["created_at", "2015-08-10 14:07:02.876304"], ["updated_at", "2015-08-10 14:07:02.876304"]]
D, [2015-08-10T15:07:02.878688 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.879455 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "apps"
D, [2015-08-10T15:07:02.879948 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.880395 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.880732 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.881720 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 9 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.883229 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 9], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.882044"], ["updated_at", "2015-08-10 14:07:02.882044"]]
D, [2015-08-10T15:07:02.885088 #32735] DEBUG -- :   [1m[35m (1.4ms)[0m  commit transaction
D, [2015-08-10T15:07:02.885848 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.886359 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.886709 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.887627 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.888876 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 10], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.887949"], ["updated_at", "2015-08-10 14:07:02.887949"]]
D, [2015-08-10T15:07:02.890126 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.890709 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.891116 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.891964 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.893349 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 10], ["app_id", 2], ["refresh_date", "2015-07-17"], ["created_at", "2015-08-10 14:07:02.892325"], ["updated_at", "2015-08-10 14:07:02.892325"]]
D, [2015-08-10T15:07:02.894672 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.895347 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:02.895815 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.896644 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 3) LIMIT 1
D, [2015-08-10T15:07:02.897920 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 10], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.896988"], ["updated_at", "2015-08-10 14:07:02.896988"]]
D, [2015-08-10T15:07:02.899153 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.899856 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:02.900276 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.901187 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 4) LIMIT 1[0m
D, [2015-08-10T15:07:02.902515 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 10], ["app_id", 4], ["refresh_date", "2015-08-01"], ["created_at", "2015-08-10 14:07:02.901524"], ["updated_at", "2015-08-10 14:07:02.901524"]]
D, [2015-08-10T15:07:02.903715 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.904324 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:02.904935 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.905900 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 5) LIMIT 1
D, [2015-08-10T15:07:02.907324 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 10], ["app_id", 5], ["created_at", "2015-08-10 14:07:02.906253"], ["updated_at", "2015-08-10 14:07:02.906253"]]
D, [2015-08-10T15:07:02.908497 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.909304 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:02.909777 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.910804 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 6) LIMIT 1[0m
D, [2015-08-10T15:07:02.912442 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 10], ["app_id", 6], ["refresh_date", "2015-05-29"], ["created_at", "2015-08-10 14:07:02.911206"], ["updated_at", "2015-08-10 14:07:02.911206"]]
D, [2015-08-10T15:07:02.913715 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.914538 #32735] DEBUG -- :   [1m[35mApp Load (0.2ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:02.915117 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.916053 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 7) LIMIT 1
D, [2015-08-10T15:07:02.917656 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 10], ["app_id", 7], ["created_at", "2015-08-10 14:07:02.916429"], ["updated_at", "2015-08-10 14:07:02.916429"]]
D, [2015-08-10T15:07:02.919288 #32735] DEBUG -- :   [1m[35m (1.0ms)[0m  commit transaction
D, [2015-08-10T15:07:02.920077 #32735] DEBUG -- :   [1m[36mApp Load (0.2ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 8]]
D, [2015-08-10T15:07:02.920641 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.921770 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 10 AND "systems"."app_id" = 8) LIMIT 1[0m
D, [2015-08-10T15:07:02.923707 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 10], ["app_id", 8], ["refresh_date", "2015-07-20"], ["created_at", "2015-08-10 14:07:02.922236"], ["updated_at", "2015-08-10 14:07:02.922236"]]
D, [2015-08-10T15:07:02.925235 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.926215 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SELECT COUNT(*) FROM "apps"
D, [2015-08-10T15:07:02.926856 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.927346 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.928698 #32735] DEBUG -- :   [1m[36mSystem Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 1) LIMIT 1[0m
D, [2015-08-10T15:07:02.930766 #32735] DEBUG -- :   [1m[35mSQL (0.5ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 11], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.929206"], ["updated_at", "2015-08-10 14:07:02.929206"]]
D, [2015-08-10T15:07:02.932172 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.932958 #32735] DEBUG -- :   [1m[35mApp Load (0.2ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:02.933512 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.934551 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 2) LIMIT 1
D, [2015-08-10T15:07:02.935865 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 11], ["app_id", 2], ["refresh_date", "2015-06-17"], ["created_at", "2015-08-10 14:07:02.934884"], ["updated_at", "2015-08-10 14:07:02.934884"]]
D, [2015-08-10T15:07:02.937298 #32735] DEBUG -- :   [1m[35m (1.1ms)[0m  commit transaction
D, [2015-08-10T15:07:02.938031 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:02.938404 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.939226 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 3) LIMIT 1[0m
D, [2015-08-10T15:07:02.940552 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 11], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.939570"], ["updated_at", "2015-08-10 14:07:02.939570"]]
D, [2015-08-10T15:07:02.947074 #32735] DEBUG -- :   [1m[36m (6.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.947670 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:02.948023 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.948800 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 4) LIMIT 1
D, [2015-08-10T15:07:02.950119 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 11], ["app_id", 4], ["refresh_date", "2015-05-18"], ["created_at", "2015-08-10 14:07:02.949104"], ["updated_at", "2015-08-10 14:07:02.949104"]]
D, [2015-08-10T15:07:02.951320 #32735] DEBUG -- :   [1m[35m (0.9ms)[0m  commit transaction
D, [2015-08-10T15:07:02.951916 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:02.952277 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.953047 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 5) LIMIT 1[0m
D, [2015-08-10T15:07:02.954240 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["env_id", 11], ["app_id", 5], ["created_at", "2015-08-10 14:07:02.953362"], ["updated_at", "2015-08-10 14:07:02.953362"]]
D, [2015-08-10T15:07:02.955443 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.956022 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:02.956393 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.957145 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 11 AND "systems"."app_id" = 6) LIMIT 1
D, [2015-08-10T15:07:02.958622 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["env_id", 11], ["app_id", 6], ["refresh_date", "2015-05-20"], ["created_at", "2015-08-10 14:07:02.957448"], ["updated_at", "2015-08-10 14:07:02.957448"]]
D, [2015-08-10T15:07:02.959799 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.960493 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "apps"[0m
D, [2015-08-10T15:07:02.960954 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.961283 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.962108 #32735] DEBUG -- :   [1m[35mSystem Exists (0.1ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 12 AND "systems"."app_id" = 1) LIMIT 1
D, [2015-08-10T15:07:02.963191 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 12], ["app_id", 1], ["created_at", "2015-08-10 14:07:02.962398"], ["updated_at", "2015-08-10 14:07:02.962398"]]
D, [2015-08-10T15:07:02.964305 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:02.964877 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:02.965332 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:02.966115 #32735] DEBUG -- :   [1m[36mSystem Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 12 AND "systems"."app_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:02.967375 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "systems" ("env_id", "app_id", "refresh_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["env_id", 12], ["app_id", 2], ["refresh_date", "2015-05-18"], ["created_at", "2015-08-10 14:07:02.966455"], ["updated_at", "2015-08-10 14:07:02.966455"]]
D, [2015-08-10T15:07:02.968645 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:02.969371 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:02.969778 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:02.970752 #32735] DEBUG -- :   [1m[35mSystem Exists (0.2ms)[0m  SELECT  1 AS one FROM "systems" WHERE ("systems"."env_id" = 12 AND "systems"."app_id" = 3) LIMIT 1
D, [2015-08-10T15:07:02.972827 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "systems" ("env_id", "app_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["env_id", 12], ["app_id", 3], ["created_at", "2015-08-10 14:07:02.971329"], ["updated_at", "2015-08-10 14:07:02.971329"]]
D, [2015-08-10T15:07:02.976433 #32735] DEBUG -- :   [1m[35m (2.4ms)[0m  commit transaction
D, [2015-08-10T15:07:02.990906 #32735] DEBUG -- :   [1m[36mSQL (3.0ms)[0m  [1mDELETE FROM "refresh_requests"[0m
D, [2015-08-10T15:07:02.992108 #32735] DEBUG -- :   [1m[35mSystem Load (0.2ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:02.993264 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:02.996849 #32735] DEBUG -- :   [1m[35mApp Load (0.5ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.014093 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.015826 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 1], ["app_id", 1], ["refresh_date", "2015-07-31"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec"], ["status", "Complete"], ["created_at", "2015-08-10 14:07:03.014554"], ["updated_at", "2015-08-10 14:07:03.014554"]]
D, [2015-08-10T15:07:03.017095 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.017513 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.018270 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:03.018985 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.019652 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.020993 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 1], ["app_id", 2], ["refresh_date", "2015-07-12"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum"], ["status", "Complete"], ["created_at", "2015-08-10 14:07:03.020008"], ["updated_at", "2015-08-10 14:07:03.020008"]]
D, [2015-08-10T15:07:03.022271 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.022632 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:03.023396 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:03.024043 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.024740 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.026344 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 2], ["app_id", 1], ["refresh_date", "2015-07-08"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in"], ["status", "In Progress"], ["created_at", "2015-08-10 14:07:03.025109"], ["updated_at", "2015-08-10 14:07:03.025109"]]
D, [2015-08-10T15:07:03.027612 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.027974 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:03.028652 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:03.029202 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.029773 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.031089 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 2], ["app_id", 2], ["refresh_date", "2015-06-15"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus"], ["status", "New"], ["created_at", "2015-08-10 14:07:03.030121"], ["updated_at", "2015-08-10 14:07:03.030121"]]
D, [2015-08-10T15:07:03.032311 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.032738 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:03.033447 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:03.034151 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.034764 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.036137 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 3], ["app_id", 1], ["refresh_date", "2015-07-29"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante"], ["status", "Complete"], ["created_at", "2015-08-10 14:07:03.035138"], ["updated_at", "2015-08-10 14:07:03.035138"]]
D, [2015-08-10T15:07:03.037365 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.037742 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:03.038709 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:03.039319 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.039935 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.041313 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 3], ["app_id", 2], ["refresh_date", "2015-07-01"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut"], ["status", "New"], ["created_at", "2015-08-10 14:07:03.040263"], ["updated_at", "2015-08-10 14:07:03.040263"]]
D, [2015-08-10T15:07:03.052731 #32735] DEBUG -- :   [1m[36m (10.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.053344 #32735] DEBUG -- :   [1m[35mSystem Load (0.2ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:03.054155 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.054718 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.055348 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.056768 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 4], ["app_id", 1], ["refresh_date", "2015-06-08"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus"], ["status", "New"], ["created_at", "2015-08-10 14:07:03.055687"], ["updated_at", "2015-08-10 14:07:03.055687"]]
D, [2015-08-10T15:07:03.058017 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.058493 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 8]]
D, [2015-08-10T15:07:03.059246 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.059831 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.060415 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.061834 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 4], ["app_id", 2], ["refresh_date", "2015-05-25"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis"], ["status", "In Progress"], ["created_at", "2015-08-10 14:07:03.060743"], ["updated_at", "2015-08-10 14:07:03.060743"]]
D, [2015-08-10T15:07:03.063171 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.063552 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 9]]
D, [2015-08-10T15:07:03.064274 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.064818 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:03.065490 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.066989 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 4], ["app_id", 3], ["refresh_date", "2015-06-17"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum"], ["status", "New"], ["created_at", "2015-08-10 14:07:03.065828"], ["updated_at", "2015-08-10 14:07:03.065828"]]
D, [2015-08-10T15:07:03.068175 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.068523 #32735] DEBUG -- :   [1m[35mSystem Load (0.1ms)[0m  SELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1  [["id", 10]]
D, [2015-08-10T15:07:03.069227 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.069908 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:03.070555 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.072082 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "refresh_requests" ("env_id", "app_id", "refresh_date", "notes", "status", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?)  [["env_id", 4], ["app_id", 4], ["refresh_date", "2015-05-14"], ["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius"], ["status", "In Progress"], ["created_at", "2015-08-10 14:07:03.070950"], ["updated_at", "2015-08-10 14:07:03.070950"]]
D, [2015-08-10T15:07:03.073339 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.076676 #32735] DEBUG -- :   [1m[35mSQL (1.1ms)[0m  DELETE FROM "system_properties"
D, [2015-08-10T15:07:03.077357 #32735] DEBUG -- :   [1m[36mSystem Load (0.3ms)[0m  [1mSELECT "systems".* FROM "systems"[0m
D, [2015-08-10T15:07:03.083980 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.085140 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 1) LIMIT 1[0m
D, [2015-08-10T15:07:03.086475 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 1], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.085408"], ["updated_at", "2015-08-10 14:07:03.085408"]]
D, [2015-08-10T15:07:03.087681 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.088150 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.088990 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 2) LIMIT 1[0m
D, [2015-08-10T15:07:03.090080 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 2], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.089218"], ["updated_at", "2015-08-10 14:07:03.089218"]]
D, [2015-08-10T15:07:03.091203 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.091648 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.092419 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 3) LIMIT 1[0m
D, [2015-08-10T15:07:03.093670 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 3], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.092645"], ["updated_at", "2015-08-10 14:07:03.092645"]]
D, [2015-08-10T15:07:03.094836 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.095359 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.096153 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 4) LIMIT 1[0m
D, [2015-08-10T15:07:03.097373 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 4], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.096385"], ["updated_at", "2015-08-10 14:07:03.096385"]]
D, [2015-08-10T15:07:03.098782 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.099384 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.100220 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 5) LIMIT 1[0m
D, [2015-08-10T15:07:03.101439 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 5], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.100463"], ["updated_at", "2015-08-10 14:07:03.100463"]]
D, [2015-08-10T15:07:03.102620 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.103088 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.103898 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 6) LIMIT 1[0m
D, [2015-08-10T15:07:03.105187 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 6], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.104143"], ["updated_at", "2015-08-10 14:07:03.104143"]]
D, [2015-08-10T15:07:03.106324 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.106835 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.107620 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 7) LIMIT 1[0m
D, [2015-08-10T15:07:03.108856 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 7], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.107867"], ["updated_at", "2015-08-10 14:07:03.107867"]]
D, [2015-08-10T15:07:03.110095 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.110605 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.111452 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 8) LIMIT 1[0m
D, [2015-08-10T15:07:03.112632 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 8], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.111738"], ["updated_at", "2015-08-10 14:07:03.111738"]]
D, [2015-08-10T15:07:03.113754 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.114252 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.115037 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 9) LIMIT 1[0m
D, [2015-08-10T15:07:03.116385 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 9], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.115263"], ["updated_at", "2015-08-10 14:07:03.115263"]]
D, [2015-08-10T15:07:03.117585 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.118031 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.118900 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 10) LIMIT 1[0m
D, [2015-08-10T15:07:03.119992 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 10], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.119130"], ["updated_at", "2015-08-10 14:07:03.119130"]]
D, [2015-08-10T15:07:03.121150 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.121680 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.122511 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 11) LIMIT 1[0m
D, [2015-08-10T15:07:03.123685 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 11], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.122748"], ["updated_at", "2015-08-10 14:07:03.122748"]]
D, [2015-08-10T15:07:03.124804 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.125265 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.126078 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 12) LIMIT 1[0m
D, [2015-08-10T15:07:03.127227 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 12], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.126345"], ["updated_at", "2015-08-10 14:07:03.126345"]]
D, [2015-08-10T15:07:03.128392 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.128841 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.129644 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 13) LIMIT 1[0m
D, [2015-08-10T15:07:03.130788 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 13], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.129904"], ["updated_at", "2015-08-10 14:07:03.129904"]]
D, [2015-08-10T15:07:03.132013 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.132609 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.133437 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 14) LIMIT 1[0m
D, [2015-08-10T15:07:03.134634 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 14], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.133695"], ["updated_at", "2015-08-10 14:07:03.133695"]]
D, [2015-08-10T15:07:03.135795 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.136279 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.137065 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 15) LIMIT 1[0m
D, [2015-08-10T15:07:03.138165 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 15], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.137298"], ["updated_at", "2015-08-10 14:07:03.137298"]]
D, [2015-08-10T15:07:03.139258 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.139833 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.140625 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 16) LIMIT 1[0m
D, [2015-08-10T15:07:03.141760 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 16], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.140849"], ["updated_at", "2015-08-10 14:07:03.140849"]]
D, [2015-08-10T15:07:03.143077 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.143564 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.144441 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 17) LIMIT 1[0m
D, [2015-08-10T15:07:03.145624 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 17], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.144693"], ["updated_at", "2015-08-10 14:07:03.144693"]]
D, [2015-08-10T15:07:03.146796 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.147250 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.148088 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 18) LIMIT 1[0m
D, [2015-08-10T15:07:03.149358 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 18], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.148346"], ["updated_at", "2015-08-10 14:07:03.148346"]]
D, [2015-08-10T15:07:03.150535 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.151071 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.151907 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 19) LIMIT 1[0m
D, [2015-08-10T15:07:03.153248 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 19], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.152154"], ["updated_at", "2015-08-10 14:07:03.152154"]]
D, [2015-08-10T15:07:03.154460 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.154913 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.155733 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 20) LIMIT 1[0m
D, [2015-08-10T15:07:03.156950 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 20], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.156012"], ["updated_at", "2015-08-10 14:07:03.156012"]]
D, [2015-08-10T15:07:03.158140 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.158598 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.159472 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 21) LIMIT 1[0m
D, [2015-08-10T15:07:03.161851 #32735] DEBUG -- :   [1m[35mSQL (0.7ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 21], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.159856"], ["updated_at", "2015-08-10 14:07:03.159856"]]
D, [2015-08-10T15:07:03.163841 #32735] DEBUG -- :   [1m[36m (1.3ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.164530 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.166840 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.9ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 22) LIMIT 1[0m
D, [2015-08-10T15:07:03.171050 #32735] DEBUG -- :   [1m[35mSQL (0.6ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 22], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.168359"], ["updated_at", "2015-08-10 14:07:03.168359"]]
D, [2015-08-10T15:07:03.174042 #32735] DEBUG -- :   [1m[36m (2.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.177412 #32735] DEBUG -- :   [1m[35m (0.4ms)[0m  begin transaction
D, [2015-08-10T15:07:03.180481 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 23) LIMIT 1[0m
D, [2015-08-10T15:07:03.186088 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 23], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.181400"], ["updated_at", "2015-08-10 14:07:03.181400"]]
D, [2015-08-10T15:07:03.188158 #32735] DEBUG -- :   [1m[36m (1.4ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.190182 #32735] DEBUG -- :   [1m[35m (0.4ms)[0m  begin transaction
D, [2015-08-10T15:07:03.194454 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.5ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 24) LIMIT 1[0m
D, [2015-08-10T15:07:03.196005 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 24], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.194864"], ["updated_at", "2015-08-10 14:07:03.194864"]]
D, [2015-08-10T15:07:03.197187 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.197790 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.198638 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 25) LIMIT 1[0m
D, [2015-08-10T15:07:03.200310 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 25], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.198885"], ["updated_at", "2015-08-10 14:07:03.198885"]]
D, [2015-08-10T15:07:03.201465 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.201975 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.202766 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 26) LIMIT 1[0m
D, [2015-08-10T15:07:03.204757 #32735] DEBUG -- :   [1m[35mSQL (0.9ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 26], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.203009"], ["updated_at", "2015-08-10 14:07:03.203009"]]
D, [2015-08-10T15:07:03.206367 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.206821 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.208006 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 27) LIMIT 1[0m
D, [2015-08-10T15:07:03.209507 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 27], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.208377"], ["updated_at", "2015-08-10 14:07:03.208377"]]
D, [2015-08-10T15:07:03.210613 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.211037 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.211874 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 28) LIMIT 1[0m
D, [2015-08-10T15:07:03.212986 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 28], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.212103"], ["updated_at", "2015-08-10 14:07:03.212103"]]
D, [2015-08-10T15:07:03.214043 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.214416 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.215498 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.3ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 29) LIMIT 1[0m
D, [2015-08-10T15:07:03.217161 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 29], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.215976"], ["updated_at", "2015-08-10 14:07:03.215976"]]
D, [2015-08-10T15:07:03.218312 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.218796 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.219612 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 30) LIMIT 1[0m
D, [2015-08-10T15:07:03.220942 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 30], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.219861"], ["updated_at", "2015-08-10 14:07:03.219861"]]
D, [2015-08-10T15:07:03.222126 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.222624 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.223442 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 31) LIMIT 1[0m
D, [2015-08-10T15:07:03.224646 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 31], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.223675"], ["updated_at", "2015-08-10 14:07:03.223675"]]
D, [2015-08-10T15:07:03.225815 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.226301 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.227106 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 32) LIMIT 1[0m
D, [2015-08-10T15:07:03.228241 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 32], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.227342"], ["updated_at", "2015-08-10 14:07:03.227342"]]
D, [2015-08-10T15:07:03.229367 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.229817 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.230615 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 33) LIMIT 1[0m
D, [2015-08-10T15:07:03.231880 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 33], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.230896"], ["updated_at", "2015-08-10 14:07:03.230896"]]
D, [2015-08-10T15:07:03.233285 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.233767 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.234653 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 34) LIMIT 1[0m
D, [2015-08-10T15:07:03.235875 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 34], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.234917"], ["updated_at", "2015-08-10 14:07:03.234917"]]
D, [2015-08-10T15:07:03.237007 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.237442 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.238280 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 35) LIMIT 1[0m
D, [2015-08-10T15:07:03.239441 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 35], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.238523"], ["updated_at", "2015-08-10 14:07:03.238523"]]
D, [2015-08-10T15:07:03.240576 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.241051 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.241890 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 36) LIMIT 1[0m
D, [2015-08-10T15:07:03.242994 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 36], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.242120"], ["updated_at", "2015-08-10 14:07:03.242120"]]
D, [2015-08-10T15:07:03.244320 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.244811 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.245698 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 37) LIMIT 1[0m
D, [2015-08-10T15:07:03.246899 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 37], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.245955"], ["updated_at", "2015-08-10 14:07:03.245955"]]
D, [2015-08-10T15:07:03.248093 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.248552 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.249397 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 38) LIMIT 1[0m
D, [2015-08-10T15:07:03.250632 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 38], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.249635"], ["updated_at", "2015-08-10 14:07:03.249635"]]
D, [2015-08-10T15:07:03.251805 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.252249 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.253066 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 39) LIMIT 1[0m
D, [2015-08-10T15:07:03.254144 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 39], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.253296"], ["updated_at", "2015-08-10 14:07:03.253296"]]
D, [2015-08-10T15:07:03.255388 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.255935 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.256760 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 40) LIMIT 1[0m
D, [2015-08-10T15:07:03.258013 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 40], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.256998"], ["updated_at", "2015-08-10 14:07:03.256998"]]
D, [2015-08-10T15:07:03.259317 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.259874 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.260693 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 41) LIMIT 1[0m
D, [2015-08-10T15:07:03.261838 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 41], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.260933"], ["updated_at", "2015-08-10 14:07:03.260933"]]
D, [2015-08-10T15:07:03.262996 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.263465 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.264240 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 42) LIMIT 1[0m
D, [2015-08-10T15:07:03.265406 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 42], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.264477"], ["updated_at", "2015-08-10 14:07:03.264477"]]
D, [2015-08-10T15:07:03.266772 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.267447 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.268301 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 43) LIMIT 1[0m
D, [2015-08-10T15:07:03.269579 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 43], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.268544"], ["updated_at", "2015-08-10 14:07:03.268544"]]
D, [2015-08-10T15:07:03.270842 #32735] DEBUG -- :   [1m[36m (0.9ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.271297 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.272146 #32735] DEBUG -- :   [1m[36mSystemProperty Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "system_properties" WHERE ("system_properties"."key" = 'State' AND "system_properties"."system_id" = 44) LIMIT 1[0m
D, [2015-08-10T15:07:03.273324 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "system_properties" ("system_id", "key", "value", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["system_id", 44], ["key", "State"], ["value", "Open"], ["created_at", "2015-08-10 14:07:03.272386"], ["updated_at", "2015-08-10 14:07:03.272386"]]
D, [2015-08-10T15:07:03.274493 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.277867 #32735] DEBUG -- :   [1m[35mSQL (1.1ms)[0m  DELETE FROM "booking_requests"
D, [2015-08-10T15:07:03.278844 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT COUNT(*) FROM "projects"[0m
D, [2015-08-10T15:07:03.279584 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.285304 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.286854 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus"], ["project", "Project 0"], ["user", "John Doe"], ["status", "Complete"], ["start_date", "2015-07-19"], ["end_date", "2015-08-28"], ["created_at", "2015-08-10 14:07:03.285595"], ["updated_at", "2015-08-10 14:07:03.285595"]]
D, [2015-08-10T15:07:03.288027 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.288772 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "projects"
D, [2015-08-10T15:07:03.289058 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.289588 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:03.291028 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien"], ["project", "Project 3"], ["user", "John Doe"], ["status", "New"], ["start_date", "2015-07-29"], ["end_date", "2015-08-29"], ["created_at", "2015-08-10 14:07:03.289790"], ["updated_at", "2015-08-10 14:07:03.289790"]]
D, [2015-08-10T15:07:03.292191 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
D, [2015-08-10T15:07:03.292933 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT COUNT(*) FROM "projects"[0m
D, [2015-08-10T15:07:03.293198 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.293742 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.294963 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in"], ["project", "Project 0"], ["user", "John Doe"], ["status", "In Progress"], ["start_date", "2015-07-25"], ["end_date", "2015-10-27"], ["created_at", "2015-08-10 14:07:03.293954"], ["updated_at", "2015-08-10 14:07:03.293954"]]
D, [2015-08-10T15:07:03.296095 #32735] DEBUG -- :   [1m[36m (0.7ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.296794 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "projects"
D, [2015-08-10T15:07:03.297056 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:03.297574 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:03.299129 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum"], ["project", "Project 2"], ["user", "John Doe"], ["status", "New"], ["start_date", "2015-07-15"], ["end_date", "2015-08-14"], ["created_at", "2015-08-10 14:07:03.298020"], ["updated_at", "2015-08-10 14:07:03.298020"]]
D, [2015-08-10T15:07:03.300344 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:03.301069 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "projects"[0m
D, [2015-08-10T15:07:03.301394 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1  [["id", 8]]
D, [2015-08-10T15:07:03.302006 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.303285 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia"], ["project", "Project 7"], ["user", "John Doe"], ["status", "In Progress"], ["start_date", "2015-08-10"], ["end_date", "2015-10-08"], ["created_at", "2015-08-10 14:07:03.302235"], ["updated_at", "2015-08-10 14:07:03.302235"]]
D, [2015-08-10T15:07:03.304457 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.305103 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "projects"
D, [2015-08-10T15:07:03.305394 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:03.305905 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:03.307129 #32735] DEBUG -- :   [1m[36mSQL (0.2ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum"], ["project", "Project 6"], ["user", "John Doe"], ["status", "New"], ["start_date", "2015-08-08"], ["end_date", "2015-08-18"], ["created_at", "2015-08-10 14:07:03.306114"], ["updated_at", "2015-08-10 14:07:03.306114"]]
D, [2015-08-10T15:07:03.308271 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:03.308943 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT COUNT(*) FROM "projects"[0m
D, [2015-08-10T15:07:03.309214 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:03.309753 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.311297 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus"], ["project", "Project 1"], ["user", "John Doe"], ["status", "Complete"], ["start_date", "2015-08-02"], ["end_date", "2015-09-17"], ["created_at", "2015-08-10 14:07:03.309954"], ["updated_at", "2015-08-10 14:07:03.309954"]]
D, [2015-08-10T15:07:03.312455 #32735] DEBUG -- :   [1m[36m (0.8ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.313164 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "projects"
D, [2015-08-10T15:07:03.313473 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:03.314102 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
D, [2015-08-10T15:07:03.315382 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit"], ["project", "Project 8"], ["user", "John Doe"], ["status", "In Progress"], ["start_date", "2015-07-28"], ["end_date", "2015-10-12"], ["created_at", "2015-08-10 14:07:03.314319"], ["updated_at", "2015-08-10 14:07:03.314319"]]
D, [2015-08-10T15:07:03.316562 #32735] DEBUG -- :   [1m[35m (0.8ms)[0m  commit transaction
D, [2015-08-10T15:07:03.317324 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSELECT COUNT(*) FROM "projects"[0m
D, [2015-08-10T15:07:03.317682 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:03.318244 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
D, [2015-08-10T15:07:03.319612 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)  [["notes", "lorem ipsum dolor sit amet consectetuer"], ["project", "Project 5"], ["user", "John Doe"], ["status", "In Progress"], ["start_date", "2015-08-09"], ["end_date", "2015-08-17"], ["created_at", "2015-08-10 14:07:03.318493"], ["updated_at", "2015-08-10 14:07:03.318493"]]
D, [2015-08-10T15:07:03.320994 #32735] DEBUG -- :   [1m[36m (1.0ms)[0m  [1mcommit transaction[0m
D, [2015-08-10T15:07:03.321706 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT COUNT(*) FROM "projects"
D, [2015-08-10T15:07:03.321991 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:03.322560 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
D, [2015-08-10T15:07:03.323929 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "project", "user", "status", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam"], ["project", "Project 1"], ["user", "John Doe"], ["status", "In Progress"], ["start_date", "2015-08-02"], ["end_date", "2015-10-13"], ["created_at", "2015-08-10 14:07:03.322813"], ["updated_at", "2015-08-10 14:07:03.322813"]]
D, [2015-08-10T15:07:03.325011 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  commit transaction
Run options: --seed 39242

# Running:

D, [2015-08-10T15:07:03.406301 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.406439 #32735]  INFO -- : -----------------------------------------
I, [2015-08-10T15:07:03.406489 #32735]  INFO -- : ProjectTest: test_must_have_a_description
I, [2015-08-10T15:07:03.406512 #32735]  INFO -- : -----------------------------------------
D, [2015-08-10T15:07:03.406962 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.407848 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'This is a unique name' LIMIT 1[0m
D, [2015-08-10T15:07:03.754078 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.754314 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.754720 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.754767 #32735]  INFO -- : ---------------------------------------
I, [2015-08-10T15:07:03.754788 #32735]  INFO -- : ProjectTest: test_must_have_unique_name
I, [2015-08-10T15:07:03.754805 #32735]  INFO -- : ---------------------------------------
D, [2015-08-10T15:07:03.755404 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:03.755722 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.756297 #32735] DEBUG -- :   [1m[36mProject Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "projects" WHERE "projects"."name" = 'Project 0' LIMIT 1[0m
D, [2015-08-10T15:07:03.758014 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.758276 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.758510 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.758552 #32735]  INFO -- : ----------------------------------
I, [2015-08-10T15:07:03.758646 #32735]  INFO -- : ProjectTest: test_must_have_a_name
I, [2015-08-10T15:07:03.758665 #32735]  INFO -- : ----------------------------------
D, [2015-08-10T15:07:03.758823 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.759377 #32735] DEBUG -- :   [1m[35mProject Exists (0.1ms)[0m  SELECT  1 AS one FROM "projects" WHERE "projects"."name" IS NULL LIMIT 1
D, [2015-08-10T15:07:03.761630 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.761827 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.762125 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.762168 #32735]  INFO -- : ---------------------------------------
I, [2015-08-10T15:07:03.762188 #32735]  INFO -- : ProjectTest: test_cant_delete_if_active
I, [2015-08-10T15:07:03.762205 #32735]  INFO -- : ---------------------------------------
D, [2015-08-10T15:07:03.762854 #32735] DEBUG -- :   [1m[35mEnvbooking Load (0.1ms)[0m  SELECT  "envbookings".* FROM "envbookings"  ORDER BY "envbookings"."id" ASC LIMIT 1
D, [2015-08-10T15:07:03.763194 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:03.763410 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.768927 #32735] DEBUG -- :   [1m[36mEnvbooking Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "envbookings" WHERE "envbookings"."project_id" = ? LIMIT 1[0m  [["project_id", 4]]
D, [2015-08-10T15:07:03.770906 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.771259 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.772417 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.772487 #32735]  INFO -- : --------------------------------------------
I, [2015-08-10T15:07:03.772558 #32735]  INFO -- : EnvlevelTest: test_cant_delete_active_levels
I, [2015-08-10T15:07:03.772581 #32735]  INFO -- : --------------------------------------------
D, [2015-08-10T15:07:03.773335 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:03.774157 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.774476 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.778431 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."envlevel_id" = ? LIMIT 1  [["envlevel_id", 1]]
D, [2015-08-10T15:07:03.780231 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.780575 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.780927 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.780981 #32735]  INFO -- : ------------------------------------------
I, [2015-08-10T15:07:03.781005 #32735]  INFO -- : EnvlevelTest: test_must_have_a_description
I, [2015-08-10T15:07:03.781026 #32735]  INFO -- : ------------------------------------------
D, [2015-08-10T15:07:03.781331 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.782224 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'This is a unique name' LIMIT 1[0m
D, [2015-08-10T15:07:03.783308 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.783484 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.783764 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.783807 #32735]  INFO -- : ----------------------------------------
I, [2015-08-10T15:07:03.783828 #32735]  INFO -- : EnvlevelTest: test_must_have_unique_name
I, [2015-08-10T15:07:03.783845 #32735]  INFO -- : ----------------------------------------
D, [2015-08-10T15:07:03.784123 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.784809 #32735] DEBUG -- :   [1m[35mEnvlevel Exists (0.1ms)[0m  SELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'DEV' LIMIT 1
D, [2015-08-10T15:07:03.786191 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.786720 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.787345 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.787401 #32735]  INFO -- : -----------------------------------
I, [2015-08-10T15:07:03.787426 #32735]  INFO -- : EnvlevelTest: test_must_have_a_name
I, [2015-08-10T15:07:03.787445 #32735]  INFO -- : -----------------------------------
D, [2015-08-10T15:07:03.787697 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.788383 #32735] DEBUG -- :   [1m[36mEnvlevel Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" IS NULL LIMIT 1[0m
D, [2015-08-10T15:07:03.789949 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.790134 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.790445 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:03.790488 #32735]  INFO -- : ----------------------------------
I, [2015-08-10T15:07:03.790510 #32735]  INFO -- : EnvlevelTest: test_valid_and_works
I, [2015-08-10T15:07:03.790527 #32735]  INFO -- : ----------------------------------
D, [2015-08-10T15:07:03.790915 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.791623 #32735] DEBUG -- :   [1m[35mEnvlevel Exists (0.1ms)[0m  SELECT  1 AS one FROM "envlevels" WHERE "envlevels"."name" = 'Unique Name' LIMIT 1
D, [2015-08-10T15:07:03.792905 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "envlevels" ("name", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["name", "Unique Name"], ["description", "description"], ["created_at", "2015-08-10 14:07:03.791797"], ["updated_at", "2015-08-10 14:07:03.791797"]]
D, [2015-08-10T15:07:03.793354 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  RELEASE SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.794192 #32735] DEBUG -- :   [1m[36m (0.6ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.797369 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:03.797461 #32735]  INFO -- : ---------------------------
I, [2015-08-10T15:07:03.797494 #32735]  INFO -- : AppTest: test_invalid_color
I, [2015-08-10T15:07:03.797518 #32735]  INFO -- : ---------------------------
D, [2015-08-10T15:07:03.798095 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.800673 #32735] DEBUG -- :   [1m[35mApp Exists (0.2ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'Test' LIMIT 1
D, [2015-08-10T15:07:03.801387 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.801624 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.801960 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.802032 #32735]  INFO -- : -----------------------------------
I, [2015-08-10T15:07:03.802059 #32735]  INFO -- : AppTest: test_Won't_save_duplicates
I, [2015-08-10T15:07:03.802079 #32735]  INFO -- : -----------------------------------
D, [2015-08-10T15:07:03.802468 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.803376 #32735] DEBUG -- :   [1m[36mApp Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'Test' LIMIT 1[0m
D, [2015-08-10T15:07:03.805369 #32735] DEBUG -- :   [1m[35mSQL (0.4ms)[0m  INSERT INTO "apps" ("name", "color", "description", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["name", "Test"], ["color", "#ffffff"], ["description", "This is a test"], ["created_at", "2015-08-10 14:07:03.803611"], ["updated_at", "2015-08-10 14:07:03.803611"]]
D, [2015-08-10T15:07:03.806310 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.806889 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.813157 #32735] DEBUG -- :   [1m[36mApp Exists (0.4ms)[0m  [1mSELECT  1 AS one FROM "apps" WHERE "apps"."name" IS NULL LIMIT 1[0m
D, [2015-08-10T15:07:03.815692 #32735] DEBUG -- :   [1m[35m (0.2ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.817984 #32735] DEBUG -- :   [1m[36mSQL (0.5ms)[0m  [1mDELETE FROM "apps"[0m
D, [2015-08-10T15:07:03.824507 #32735] DEBUG -- :   [1m[35m (6.3ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.825148 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.825234 #32735]  INFO -- : ---------------------------------------------
I, [2015-08-10T15:07:03.825273 #32735]  INFO -- : AppTest: test_Checks_all_presence_is_verified
I, [2015-08-10T15:07:03.825301 #32735]  INFO -- : ---------------------------------------------
D, [2015-08-10T15:07:03.825549 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.828082 #32735] DEBUG -- :   [1m[36mApp Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "apps" WHERE "apps"."name" IS NULL LIMIT 1[0m
D, [2015-08-10T15:07:03.828782 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.829279 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.831921 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'Test' LIMIT 1
D, [2015-08-10T15:07:03.832391 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.832790 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.834529 #32735] DEBUG -- :   [1m[36mApp Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'Test' LIMIT 1[0m
D, [2015-08-10T15:07:03.835052 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.835389 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.836348 #32735] DEBUG -- :   [1m[35mApp Exists (0.1ms)[0m  SELECT  1 AS one FROM "apps" WHERE "apps"."name" = 'Test' LIMIT 1
D, [2015-08-10T15:07:03.838197 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "apps" ("name", "description", "color", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["name", "Test"], ["description", "Test"], ["color", "#ffffff"], ["created_at", "2015-08-10 14:07:03.836460"], ["updated_at", "2015-08-10 14:07:03.836460"]]
D, [2015-08-10T15:07:03.838597 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  RELEASE SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.839978 #32735] DEBUG -- :   [1m[36m (1.2ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.842385 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:03.842464 #32735]  INFO -- : --------------------------
I, [2015-08-10T15:07:03.842505 #32735]  INFO -- : EnvTest: test_missing_name
I, [2015-08-10T15:07:03.842527 #32735]  INFO -- : --------------------------
D, [2015-08-10T15:07:03.845095 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.4ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels"  ORDER BY "envlevels"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:03.847596 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.850606 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" IS NULL LIMIT 1[0m
D, [2015-08-10T15:07:03.851296 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.851518 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.852064 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.852128 #32735]  INFO -- : ---------------------------
I, [2015-08-10T15:07:03.852151 #32735]  INFO -- : EnvTest: test_cannot_delete
I, [2015-08-10T15:07:03.852170 #32735]  INFO -- : ---------------------------
D, [2015-08-10T15:07:03.852639 #32735] DEBUG -- :   [1m[36mEnvbooking Load (0.1ms)[0m  [1mSELECT  "envbookings".* FROM "envbookings"  ORDER BY "envbookings"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:03.853474 #32735] DEBUG -- :   [1m[35mEnv Load (0.0ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:03.853690 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.856010 #32735] DEBUG -- :   [1m[35mEnvbooking Exists (0.1ms)[0m  SELECT  1 AS one FROM "envbookings" WHERE "envbookings"."env_id" = ? LIMIT 1  [["env_id", 1]]
D, [2015-08-10T15:07:03.857043 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.857303 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.857552 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.857828 #32735]  INFO -- : ------------------------------
I, [2015-08-10T15:07:03.857852 #32735]  INFO -- : EnvTest: test_invalid_envlevel
I, [2015-08-10T15:07:03.857870 #32735]  INFO -- : ------------------------------
D, [2015-08-10T15:07:03.858085 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels" WHERE "envlevels"."id" = ? LIMIT 1  [["id", 58483]]
D, [2015-08-10T15:07:03.859338 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.859588 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.859632 #32735]  INFO -- : ---------------------------------
I, [2015-08-10T15:07:03.859772 #32735]  INFO -- : EnvTest: test_missing_description
I, [2015-08-10T15:07:03.859791 #32735]  INFO -- : ---------------------------------
D, [2015-08-10T15:07:03.860307 #32735] DEBUG -- :   [1m[36mEnvlevel Load (0.1ms)[0m  [1mSELECT  "envlevels".* FROM "envlevels"  ORDER BY "envlevels"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:03.860954 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.862900 #32735] DEBUG -- :   [1m[36mEnv Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Test' LIMIT 1[0m
D, [2015-08-10T15:07:03.863389 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.863572 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:03.863803 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:03.863845 #32735]  INFO -- : ------------------------------
I, [2015-08-10T15:07:03.863866 #32735]  INFO -- : EnvTest: test_missing_envlevel
I, [2015-08-10T15:07:03.863884 #32735]  INFO -- : ------------------------------
D, [2015-08-10T15:07:03.864235 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.865384 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Test' LIMIT 1
D, [2015-08-10T15:07:03.866279 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.866454 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.866702 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.866746 #32735]  INFO -- : -----------------------------
I, [2015-08-10T15:07:03.866769 #32735]  INFO -- : EnvTest: test_valid_and_works
I, [2015-08-10T15:07:03.866787 #32735]  INFO -- : -----------------------------
D, [2015-08-10T15:07:03.867411 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.2ms)[0m  SELECT  "envlevels".* FROM "envlevels"  ORDER BY "envlevels"."id" ASC LIMIT 1
D, [2015-08-10T15:07:03.868003 #32735] DEBUG -- :   [1m[36m (0.2ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.869279 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'Test' LIMIT 1
D, [2015-08-10T15:07:03.869612 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.869904 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.870149 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.870194 #32735]  INFO -- : --------------------
I, [2015-08-10T15:07:03.870216 #32735]  INFO -- : EnvTest: test_Unique
I, [2015-08-10T15:07:03.870235 #32735]  INFO -- : --------------------
D, [2015-08-10T15:07:03.870747 #32735] DEBUG -- :   [1m[35mEnvlevel Load (0.1ms)[0m  SELECT  "envlevels".* FROM "envlevels"  ORDER BY "envlevels"."id" ASC LIMIT 1
D, [2015-08-10T15:07:03.871386 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.872639 #32735] DEBUG -- :   [1m[35mEnv Exists (0.1ms)[0m  SELECT  1 AS one FROM "envs" WHERE "envs"."name" = 'DEV1' LIMIT 1
D, [2015-08-10T15:07:03.873836 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:03.874004 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:03.875653 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:03.875710 #32735]  INFO -- : ------------------------------------------
I, [2015-08-10T15:07:03.875732 #32735]  INFO -- : BookingRequestsControllerTest: test_create
I, [2015-08-10T15:07:03.875750 #32735]  INFO -- : ------------------------------------------
D, [2015-08-10T15:07:03.894952 #32735] DEBUG -- :   [1m[35m (0.4ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.896184 #32735] DEBUG -- :   [1m[36mUser Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'durward.donnelly@dickens.name' LIMIT 1[0m
D, [2015-08-10T15:07:03.897908 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "durward.donnelly@dickens.name"], ["encrypted_password", "$2a$04$x.9RMW1zAL1c4IItKvtObOZ7D8DaF./yFT.gujnd64WJ8eldTD9r2"], ["admin", "t"], ["created_at", "2015-08-10 14:07:03.896743"], ["updated_at", "2015-08-10 14:07:03.896743"]]
D, [2015-08-10T15:07:03.898671 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:03.900649 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:03.899398"], ["updated_at", "2015-08-10 14:07:03.899398"]]
D, [2015-08-10T15:07:03.901306 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:03.909412 #32735]  INFO -- : Processing by BookingRequestsController#create as JS
I, [2015-08-10T15:07:03.909490 #32735]  INFO -- :   Parameters: {"booking_request"=>{"notes"=>"lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus", "user"=>"Joe Bloggs", "status"=>"New", "project"=>"Project 0", "start_date"=>"2015-08-10", "end_date"=>"2015-08-10"}}
D, [2015-08-10T15:07:03.910576 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.912509 #32735] DEBUG -- :   [1m[36mSQL (0.4ms)[0m  [1mINSERT INTO "booking_requests" ("notes", "status", "project", "user", "start_date", "end_date", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?, ?, ?, ?)[0m  [["notes", "lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus"], ["status", "New"], ["project", "Project 0"], ["user", "Joe Bloggs"], ["start_date", "2015-08-10"], ["end_date", "2015-08-10"], ["created_at", "2015-08-10 14:07:03.911095"], ["updated_at", "2015-08-10 14:07:03.911095"]]
D, [2015-08-10T15:07:03.912854 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  RELEASE SAVEPOINT active_record_1
D, [2015-08-10T15:07:03.913465 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."name" = ? LIMIT 1[0m  [["name", "Project 0"]]
D, [2015-08-10T15:07:03.989953 #32735] DEBUG -- :   [1m[35mBookingRequest Load (0.3ms)[0m  SELECT "booking_requests".* FROM "booking_requests" WHERE ("booking_requests"."status" != ?)  [["status", "Complete"]]
D, [2015-08-10T15:07:03.993194 #32735] DEBUG -- :   [1m[36mUser Load (0.2ms)[0m  [1mSELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1[0m  [["id", 3]]
I, [2015-08-10T15:07:03.998676 #32735]  INFO -- :   Rendered booking_requests/_index.html.erb (13.2ms)
I, [2015-08-10T15:07:03.999611 #32735]  INFO -- :   Rendered booking_requests/_save.js.erb (30.5ms)
I, [2015-08-10T15:07:03.999677 #32735]  INFO -- :   Rendered booking_requests/create.js.erb (50.4ms)
I, [2015-08-10T15:07:03.999982 #32735]  INFO -- : Completed 200 OK in 90ms (Views: 85.4ms | ActiveRecord: 1.0ms)
D, [2015-08-10T15:07:04.002646 #32735] DEBUG -- :   [1m[35m (2.2ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.003352 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.003479 #32735]  INFO -- : ---------------------------------------------------
I, [2015-08-10T15:07:04.003520 #32735]  INFO -- : BookingRequestsControllerTest: test_should_get_edit
I, [2015-08-10T15:07:04.003568 #32735]  INFO -- : ---------------------------------------------------
D, [2015-08-10T15:07:04.006060 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.007016 #32735] DEBUG -- :   [1m[36mUser Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'breanna.schaden@ko.biz' LIMIT 1[0m
D, [2015-08-10T15:07:04.008252 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "breanna.schaden@ko.biz"], ["encrypted_password", "$2a$04$8XOlynbFaJvHReMY1DBa..fbHTwhrQLSxdnKrJHG7jWrLbRyvKcpq"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.007187"], ["updated_at", "2015-08-10 14:07:04.007187"]]
D, [2015-08-10T15:07:04.008624 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.010188 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.009176"], ["updated_at", "2015-08-10 14:07:04.009176"]]
D, [2015-08-10T15:07:04.010767 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:04.012272 #32735]  INFO -- : Processing by BookingRequestsController#edit as JS
I, [2015-08-10T15:07:04.012337 #32735]  INFO -- :   Parameters: {"id"=>"1"}
D, [2015-08-10T15:07:04.013258 #32735] DEBUG -- :   [1m[35mBookingRequest Load (0.1ms)[0m  SELECT  "booking_requests".* FROM "booking_requests" WHERE "booking_requests"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.058390 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSELECT "projects"."name" FROM "projects"[0m
I, [2015-08-10T15:07:04.077600 #32735]  INFO -- :   Rendered booking_requests/_form.html.erb (22.2ms)
I, [2015-08-10T15:07:04.077705 #32735]  INFO -- :   Rendered booking_requests/_edit.html.erb (35.2ms)
I, [2015-08-10T15:07:04.078633 #32735]  INFO -- :   Rendered booking_requests/edit.js.erb (50.2ms)
I, [2015-08-10T15:07:04.078906 #32735]  INFO -- : Completed 200 OK in 66ms (Views: 65.2ms | ActiveRecord: 0.3ms)
D, [2015-08-10T15:07:04.079994 #32735] DEBUG -- :   [1m[35m (0.7ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.080513 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.080582 #32735]  INFO -- : ---------------------------------------------------
I, [2015-08-10T15:07:04.080609 #32735]  INFO -- : BookingRequestsControllerTest: test_should_get_show
I, [2015-08-10T15:07:04.080629 #32735]  INFO -- : ---------------------------------------------------
D, [2015-08-10T15:07:04.083427 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.084664 #32735] DEBUG -- :   [1m[36mUser Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'ru@mckenzie.com' LIMIT 1[0m
D, [2015-08-10T15:07:04.086144 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "ru@mckenzie.com"], ["encrypted_password", "$2a$04$3cRgsqQ6Fc1TDW6z4h5iWOqZxbJl1/Bi8IhM5nVWSGubO1j1arLHm"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.084851"], ["updated_at", "2015-08-10 14:07:04.084851"]]
D, [2015-08-10T15:07:04.086502 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.088411 #32735] DEBUG -- :   [1m[35mSQL (0.2ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.087054"], ["updated_at", "2015-08-10 14:07:04.087054"]]
D, [2015-08-10T15:07:04.089016 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:04.090651 #32735]  INFO -- : Processing by BookingRequestsController#show as JS
I, [2015-08-10T15:07:04.091001 #32735]  INFO -- :   Parameters: {"id"=>"1"}
D, [2015-08-10T15:07:04.091443 #32735] DEBUG -- :   [1m[35mBookingRequest Load (0.1ms)[0m  SELECT  "booking_requests".* FROM "booking_requests" WHERE "booking_requests"."id" = ? LIMIT 1  [["id", 1]]
I, [2015-08-10T15:07:04.120535 #32735]  INFO -- :   Rendered booking_requests/_show.html.erb (0.8ms)
I, [2015-08-10T15:07:04.120714 #32735]  INFO -- :   Rendered booking_requests/show.js.erb (15.7ms)
I, [2015-08-10T15:07:04.120945 #32735]  INFO -- : Completed 200 OK in 30ms (Views: 29.2ms | ActiveRecord: 0.1ms)
D, [2015-08-10T15:07:04.121754 #32735] DEBUG -- :   [1m[36m (0.5ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.122260 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:04.122322 #32735]  INFO -- : ----------------------------------------------------------------
I, [2015-08-10T15:07:04.122349 #32735]  INFO -- : BookingRequestsControllerTest: test_fail_to_create_with_nil_user
I, [2015-08-10T15:07:04.122382 #32735]  INFO -- : ----------------------------------------------------------------
D, [2015-08-10T15:07:04.125133 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.126513 #32735] DEBUG -- :   [1m[35mUser Exists (0.1ms)[0m  SELECT  1 AS one FROM "users" WHERE "users"."email" = 'ethyl.will@robelrunolfsdottir.org' LIMIT 1
D, [2015-08-10T15:07:04.127990 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["email", "ethyl.will@robelrunolfsdottir.org"], ["encrypted_password", "$2a$04$wXrkLzdrUHR26ZtC3ZFFquuYgrujfZpaGfxFXb4Vr7dm09CHQHO5W"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.126697"], ["updated_at", "2015-08-10 14:07:04.126697"]]
D, [2015-08-10T15:07:04.128309 #32735] DEBUG -- :   [1m[35mAppconfig Load (0.1ms)[0m  SELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.130025 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mINSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.128816"], ["updated_at", "2015-08-10 14:07:04.128816"]]
D, [2015-08-10T15:07:04.130588 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  RELEASE SAVEPOINT active_record_1
I, [2015-08-10T15:07:04.132916 #32735]  INFO -- : Processing by BookingRequestsController#create as JS
I, [2015-08-10T15:07:04.132989 #32735]  INFO -- :   Parameters: {"booking_request"=>{"notes"=>"lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus", "user"=>nil, "status"=>"New", "project"=>"Project 0", "start_date"=>"2015-08-10", "end_date"=>"2015-08-10"}}
D, [2015-08-10T15:07:04.134211 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.136001 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.136259 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects" WHERE "projects"."name" = ? LIMIT 1[0m  [["name", "Project 0"]]
D, [2015-08-10T15:07:04.138265 #32735] DEBUG -- :   [1m[35mBookingRequest Load (0.1ms)[0m  SELECT "booking_requests".* FROM "booking_requests" WHERE ("booking_requests"."status" != ?)  [["status", "Complete"]]
D, [2015-08-10T15:07:04.139551 #32735] DEBUG -- :   [1m[36mUser Load (0.0ms)[0m  [1mSELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1[0m  [["id", 3]]
I, [2015-08-10T15:07:04.144430 #32735]  INFO -- :   Rendered booking_requests/_index.html.erb (6.5ms)
I, [2015-08-10T15:07:04.145504 #32735]  INFO -- :   Rendered booking_requests/_save.js.erb (8.3ms)
I, [2015-08-10T15:07:04.145573 #32735]  INFO -- :   Rendered booking_requests/create.js.erb (8.6ms)
I, [2015-08-10T15:07:04.146056 #32735]  INFO -- : Completed 200 OK in 13ms (Views: 9.2ms | ActiveRecord: 0.3ms)
D, [2015-08-10T15:07:04.147142 #32735] DEBUG -- :   [1m[35m (0.6ms)[0m  rollback transaction
FD, [2015-08-10T15:07:04.147597 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.147652 #32735]  INFO -- : ---------------------------------------
I, [2015-08-10T15:07:04.147676 #32735]  INFO -- : BookingRequestsControllerTest: test_new
I, [2015-08-10T15:07:04.147696 #32735]  INFO -- : ---------------------------------------
D, [2015-08-10T15:07:04.151284 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.153844 #32735] DEBUG -- :   [1m[36mUser Exists (0.4ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'bethel.wisozk@hoeger.net' LIMIT 1[0m
D, [2015-08-10T15:07:04.160045 #32735] DEBUG -- :   [1m[35mSQL (0.7ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "bethel.wisozk@hoeger.net"], ["encrypted_password", "$2a$04$SevMe3cDBumDFI22LP/pbukfQtEOUJ00UaISAg6IoPc2ZAEf175BO"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.154457"], ["updated_at", "2015-08-10 14:07:04.154457"]]
D, [2015-08-10T15:07:04.160522 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.162409 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.161237"], ["updated_at", "2015-08-10 14:07:04.161237"]]
D, [2015-08-10T15:07:04.163010 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:04.164462 #32735]  INFO -- : Processing by BookingRequestsController#new as JS
D, [2015-08-10T15:07:04.196706 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SELECT "projects"."name" FROM "projects"
I, [2015-08-10T15:07:04.200582 #32735]  INFO -- :   Rendered booking_requests/_form.html.erb (5.0ms)
I, [2015-08-10T15:07:04.200674 #32735]  INFO -- :   Rendered booking_requests/_new.html.erb (5.6ms)
I, [2015-08-10T15:07:04.201500 #32735]  INFO -- :   Rendered booking_requests/new.js.erb (22.1ms)
I, [2015-08-10T15:07:04.201755 #32735]  INFO -- : Completed 200 OK in 37ms (Views: 36.7ms | ActiveRecord: 0.1ms)
D, [2015-08-10T15:07:04.202570 #32735] DEBUG -- :   [1m[36m (0.5ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.203117 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:04.203187 #32735]  INFO -- : ----------------------------------------------------
I, [2015-08-10T15:07:04.203213 #32735]  INFO -- : BookingRequestsControllerTest: test_should_get_index
I, [2015-08-10T15:07:04.203233 #32735]  INFO -- : ----------------------------------------------------
D, [2015-08-10T15:07:04.206220 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.207270 #32735] DEBUG -- :   [1m[35mUser Exists (0.1ms)[0m  SELECT  1 AS one FROM "users" WHERE "users"."email" = 'jeramie_mraz@nicolas.info' LIMIT 1
D, [2015-08-10T15:07:04.208752 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["email", "jeramie_mraz@nicolas.info"], ["encrypted_password", "$2a$04$rlWHhFB.sTAdJDIwkqkyquroPJ7KWoVrenKOZTO/6.HUNH5myIVbS"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.207583"], ["updated_at", "2015-08-10 14:07:04.207583"]]
D, [2015-08-10T15:07:04.209094 #32735] DEBUG -- :   [1m[35mAppconfig Load (0.1ms)[0m  SELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.210681 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mINSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.209694"], ["updated_at", "2015-08-10 14:07:04.209694"]]
D, [2015-08-10T15:07:04.211250 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  RELEASE SAVEPOINT active_record_1
I, [2015-08-10T15:07:04.212329 #32735]  INFO -- : Processing by BookingRequestsController#index as HTML
D, [2015-08-10T15:07:04.221267 #32735] DEBUG -- :   [1m[36mUser Load (0.1ms)[0m  [1mSELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:04.224105 #32735] DEBUG -- :   [1m[35mBookingRequest Load (0.2ms)[0m  SELECT "booking_requests".* FROM "booking_requests" WHERE ("booking_requests"."status" != ?)  [["status", "Complete"]]
I, [2015-08-10T15:07:04.228458 #32735]  INFO -- :   Rendered booking_requests/_index.html.erb (5.6ms)
I, [2015-08-10T15:07:04.228551 #32735]  INFO -- :   Rendered booking_requests/index.html.erb within layouts/application (8.7ms)
D, [2015-08-10T15:07:04.559444 #32735] DEBUG -- :   [1m[36mUserPreference Load (0.1ms)[0m  [1mSELECT  "user_preferences".* FROM "user_preferences" WHERE "user_preferences"."user_id" = ? LIMIT 1[0m  [["user_id", 3]]
I, [2015-08-10T15:07:04.563093 #32735]  INFO -- :   Rendered home/_navbar.html.erb (1.3ms)
I, [2015-08-10T15:07:04.563416 #32735]  INFO -- : Completed 200 OK in 351ms (Views: 350.3ms | ActiveRecord: 0.3ms)
D, [2015-08-10T15:07:04.564214 #32735] DEBUG -- :   [1m[35m (0.5ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.565355 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.565429 #32735]  INFO -- : -------------------------------------------
I, [2015-08-10T15:07:04.565455 #32735]  INFO -- : SystemsControllerTest: test_should_get_show
I, [2015-08-10T15:07:04.565475 #32735]  INFO -- : -------------------------------------------
D, [2015-08-10T15:07:04.570137 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.571277 #32735] DEBUG -- :   [1m[36mUser Exists (0.2ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'moses.fay@fadel.com' LIMIT 1[0m
D, [2015-08-10T15:07:04.572529 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "moses.fay@fadel.com"], ["encrypted_password", "$2a$04$oYt5YLYyTPsclDQV4IXjqehPt1zhgnQY6unyfrUTJOl5K/3FpKPhi"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.571476"], ["updated_at", "2015-08-10 14:07:04.571476"]]
D, [2015-08-10T15:07:04.572873 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.574434 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.573412"], ["updated_at", "2015-08-10 14:07:04.573412"]]
D, [2015-08-10T15:07:04.575022 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:04.578508 #32735]  INFO -- : Processing by SystemsController#show as JS
I, [2015-08-10T15:07:04.578606 #32735]  INFO -- :   Parameters: {"id"=>"1"}
D, [2015-08-10T15:07:04.583705 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.584281 #32735] DEBUG -- :   [1m[36mSystem Load (0.0ms)[0m  [1mSELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.620372 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.620983 #32735] DEBUG -- :   [1m[36mApp Load (0.0ms)[0m  [1mSELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.623384 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 1]]
I, [2015-08-10T15:07:04.623735 #32735]  INFO -- :   Rendered systems/_show.html.erb (4.7ms)
I, [2015-08-10T15:07:04.623927 #32735]  INFO -- :   Rendered systems/show.js.erb (20.4ms)
I, [2015-08-10T15:07:04.624187 #32735]  INFO -- : Completed 200 OK in 45ms (Views: 39.3ms | ActiveRecord: 0.4ms)
D, [2015-08-10T15:07:04.624981 #32735] DEBUG -- :   [1m[36m (0.5ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.625542 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:04.625606 #32735]  INFO -- : --------------------------------------------
I, [2015-08-10T15:07:04.625633 #32735]  INFO -- : SystemsControllerTest: test_should_get_index
I, [2015-08-10T15:07:04.625654 #32735]  INFO -- : --------------------------------------------
D, [2015-08-10T15:07:04.628205 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.629177 #32735] DEBUG -- :   [1m[35mUser Exists (0.1ms)[0m  SELECT  1 AS one FROM "users" WHERE "users"."email" = 'berenice.pouros@rohan.name' LIMIT 1
D, [2015-08-10T15:07:04.630388 #32735] DEBUG -- :   [1m[36mSQL (0.3ms)[0m  [1mINSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)[0m  [["email", "berenice.pouros@rohan.name"], ["encrypted_password", "$2a$04$25vlNQe/iv86U0blFlHoouNhpBYJs5hlJHnTg3q.Q7ih.f5XBqT5y"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.629348"], ["updated_at", "2015-08-10 14:07:04.629348"]]
D, [2015-08-10T15:07:04.630740 #32735] DEBUG -- :   [1m[35mAppconfig Load (0.1ms)[0m  SELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.632412 #32735] DEBUG -- :   [1m[36mSQL (0.1ms)[0m  [1mINSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)[0m  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.631343"], ["updated_at", "2015-08-10 14:07:04.631343"]]
D, [2015-08-10T15:07:04.633214 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  RELEASE SAVEPOINT active_record_1
I, [2015-08-10T15:07:04.634476 #32735]  INFO -- : Processing by SystemsController#index as HTML
D, [2015-08-10T15:07:04.635445 #32735] DEBUG -- :   [1m[36mUser Load (0.1ms)[0m  [1mSELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:04.636170 #32735] DEBUG -- :   [1m[35mSystem Load (0.2ms)[0m  SELECT "systems".* FROM "systems"
D, [2015-08-10T15:07:04.637363 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.637846 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.638344 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.638780 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.639170 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:04.639532 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.639911 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 2]]
D, [2015-08-10T15:07:04.640261 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.640633 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:04.641020 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.641400 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 3]]
D, [2015-08-10T15:07:04.641813 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.642186 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.642515 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.642890 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.643215 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.643574 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.643900 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.644247 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.644570 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:04.644915 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.645243 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:04.645588 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 4]]
D, [2015-08-10T15:07:04.645904 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:04.646254 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.646568 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.646914 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.647229 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.647574 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.647887 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.648205 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.648654 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:04.649272 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.649756 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:04.650260 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.650726 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:04.651238 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.651698 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:04.652193 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.652658 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 8]]
D, [2015-08-10T15:07:04.653106 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 5]]
D, [2015-08-10T15:07:04.653491 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 9]]
D, [2015-08-10T15:07:04.653911 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 6]]
D, [2015-08-10T15:07:04.654299 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.654723 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:04.655109 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.655529 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:04.655910 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.656329 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:04.656710 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.657126 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 7]]
D, [2015-08-10T15:07:04.657506 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:04.657921 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 9]]
D, [2015-08-10T15:07:04.658337 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.658747 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.659173 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.659532 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.659905 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.660264 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.660740 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.661245 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.661945 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:04.662422 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.662900 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:04.663353 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.663797 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:04.664233 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.665100 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 7]]
D, [2015-08-10T15:07:04.665880 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 10]]
D, [2015-08-10T15:07:04.666895 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 8]]
D, [2015-08-10T15:07:04.668431 #32735] DEBUG -- :   [1m[36mEnv Load (0.2ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.671153 #32735] DEBUG -- :   [1m[35mApp Load (0.5ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.672332 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.673167 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.673836 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.674443 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.674963 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.675503 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 4]]
D, [2015-08-10T15:07:04.676011 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.676542 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 5]]
D, [2015-08-10T15:07:04.677173 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 11]]
D, [2015-08-10T15:07:04.677705 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 6]]
D, [2015-08-10T15:07:04.678221 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:04.678862 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 1]]
D, [2015-08-10T15:07:04.679390 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:04.679891 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 2]]
D, [2015-08-10T15:07:04.680307 #32735] DEBUG -- :   [1m[36mEnv Load (0.0ms)[0m  [1mSELECT  "envs".* FROM "envs" WHERE "envs"."id" = ? LIMIT 1[0m  [["id", 12]]
D, [2015-08-10T15:07:04.680741 #32735] DEBUG -- :   [1m[35mApp Load (0.0ms)[0m  SELECT  "apps".* FROM "apps" WHERE "apps"."id" = ? LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.692329 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 27]]
D, [2015-08-10T15:07:04.693535 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 1]]
D, [2015-08-10T15:07:04.694589 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 2]]
D, [2015-08-10T15:07:04.695681 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 3]]
D, [2015-08-10T15:07:04.696606 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 4]]
D, [2015-08-10T15:07:04.697438 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 5]]
D, [2015-08-10T15:07:04.698273 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 6]]
D, [2015-08-10T15:07:04.699106 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 7]]
D, [2015-08-10T15:07:04.700582 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 8]]
D, [2015-08-10T15:07:04.701761 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 9]]
D, [2015-08-10T15:07:04.702982 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 10]]
D, [2015-08-10T15:07:04.704100 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 11]]
D, [2015-08-10T15:07:04.705062 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 12]]
D, [2015-08-10T15:07:04.705913 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 13]]
D, [2015-08-10T15:07:04.706931 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 14]]
D, [2015-08-10T15:07:04.707859 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 15]]
D, [2015-08-10T15:07:04.708766 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 16]]
D, [2015-08-10T15:07:04.709552 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 17]]
D, [2015-08-10T15:07:04.710363 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 18]]
D, [2015-08-10T15:07:04.711131 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 19]]
D, [2015-08-10T15:07:04.711961 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 20]]
D, [2015-08-10T15:07:04.712790 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 21]]
D, [2015-08-10T15:07:04.713630 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 28]]
D, [2015-08-10T15:07:04.714475 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 29]]
D, [2015-08-10T15:07:04.715253 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 30]]
D, [2015-08-10T15:07:04.716069 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 31]]
D, [2015-08-10T15:07:04.716897 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 32]]
D, [2015-08-10T15:07:04.717684 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 33]]
D, [2015-08-10T15:07:04.718498 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 34]]
D, [2015-08-10T15:07:04.719358 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 35]]
D, [2015-08-10T15:07:04.720133 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 36]]
D, [2015-08-10T15:07:04.721334 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 37]]
D, [2015-08-10T15:07:04.722490 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 38]]
D, [2015-08-10T15:07:04.723703 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 39]]
D, [2015-08-10T15:07:04.724908 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 40]]
D, [2015-08-10T15:07:04.726129 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 41]]
D, [2015-08-10T15:07:04.727290 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 42]]
D, [2015-08-10T15:07:04.728421 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 43]]
D, [2015-08-10T15:07:04.729435 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 44]]
D, [2015-08-10T15:07:04.730550 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 23]]
D, [2015-08-10T15:07:04.731533 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.0ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 24]]
D, [2015-08-10T15:07:04.732519 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 25]]
D, [2015-08-10T15:07:04.733519 #32735] DEBUG -- :   [1m[36mSystemProperty Load (0.1ms)[0m  [1mSELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?[0m  [["system_id", 26]]
D, [2015-08-10T15:07:04.734481 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.0ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 22]]
I, [2015-08-10T15:07:04.734875 #32735]  INFO -- :   Rendered systems/_index.html.erb (45.0ms)
I, [2015-08-10T15:07:04.734987 #32735]  INFO -- :   Rendered systems/index.html.erb within layouts/application (47.8ms)
D, [2015-08-10T15:07:04.737498 #32735] DEBUG -- :   [1m[36mUserPreference Load (0.1ms)[0m  [1mSELECT  "user_preferences".* FROM "user_preferences" WHERE "user_preferences"."user_id" = ? LIMIT 1[0m  [["user_id", 3]]
I, [2015-08-10T15:07:04.738029 #32735]  INFO -- :   Rendered home/_navbar.html.erb (0.2ms)
I, [2015-08-10T15:07:04.738360 #32735]  INFO -- : Completed 200 OK in 104ms (Views: 55.0ms | ActiveRecord: 7.3ms)
D, [2015-08-10T15:07:04.739195 #32735] DEBUG -- :   [1m[35m (0.5ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.739705 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.739770 #32735]  INFO -- : -------------------------------------------
I, [2015-08-10T15:07:04.739796 #32735]  INFO -- : SystemsControllerTest: test_should_get_edit
I, [2015-08-10T15:07:04.739817 #32735]  INFO -- : -------------------------------------------
D, [2015-08-10T15:07:04.742460 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.743416 #32735] DEBUG -- :   [1m[36mUser Exists (0.1ms)[0m  [1mSELECT  1 AS one FROM "users" WHERE "users"."email" = 'stacy.hermiston@runtepurdy.org' LIMIT 1[0m
D, [2015-08-10T15:07:04.744535 #32735] DEBUG -- :   [1m[35mSQL (0.3ms)[0m  INSERT INTO "users" ("email", "encrypted_password", "admin", "created_at", "updated_at") VALUES (?, ?, ?, ?, ?)  [["email", "stacy.hermiston@runtepurdy.org"], ["encrypted_password", "$2a$04$/5O/2agCFAYJjUEM4uV.0O7qFmHwr8wsVdhDtLsUrQHOxluq29G6O"], ["admin", "t"], ["created_at", "2015-08-10 14:07:04.743596"], ["updated_at", "2015-08-10 14:07:04.743596"]]
D, [2015-08-10T15:07:04.744840 #32735] DEBUG -- :   [1m[36mAppconfig Load (0.1ms)[0m  [1mSELECT  "appconfigs".* FROM "appconfigs" WHERE "appconfigs"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.746249 #32735] DEBUG -- :   [1m[35mSQL (0.1ms)[0m  INSERT INTO "user_preferences" ("template", "user_id", "created_at", "updated_at") VALUES (?, ?, ?, ?)  [["template", "{{name}} {{{br}}} {{app}} {{{br}}} {{project}} {{{br}}} {{user}} {{{br}}} {{{extra_color_box}}}"], ["user_id", 3], ["created_at", "2015-08-10 14:07:04.745355"], ["updated_at", "2015-08-10 14:07:04.745355"]]
D, [2015-08-10T15:07:04.746835 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mRELEASE SAVEPOINT active_record_1[0m
I, [2015-08-10T15:07:04.747970 #32735]  INFO -- : Processing by SystemsController#edit as JS
I, [2015-08-10T15:07:04.748008 #32735]  INFO -- :   Parameters: {"id"=>"1"}
D, [2015-08-10T15:07:04.748642 #32735] DEBUG -- :   [1m[35mUser Load (0.1ms)[0m  SELECT  "users".* FROM "users" WHERE "users"."id" = ?  ORDER BY "users"."id" ASC LIMIT 1  [["id", 3]]
D, [2015-08-10T15:07:04.749080 #32735] DEBUG -- :   [1m[36mSystem Load (0.0ms)[0m  [1mSELECT  "systems".* FROM "systems" WHERE "systems"."id" = ? LIMIT 1[0m  [["id", 1]]
D, [2015-08-10T15:07:04.749750 #32735] DEBUG -- :   [1m[35mApp Load (0.2ms)[0m  SELECT "apps".* FROM "apps"
D, [2015-08-10T15:07:04.750469 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT "envs".* FROM "envs"[0m
D, [2015-08-10T15:07:04.794846 #32735] DEBUG -- :   [1m[35mSystemProperty Load (0.1ms)[0m  SELECT "system_properties".* FROM "system_properties" WHERE "system_properties"."system_id" = ?  [["system_id", 1]]
I, [2015-08-10T15:07:04.802072 #32735]  INFO -- :   Rendered systems/_form.html.erb (11.4ms)
I, [2015-08-10T15:07:04.802171 #32735]  INFO -- :   Rendered systems/_edit.html.erb (24.4ms)
I, [2015-08-10T15:07:04.802634 #32735]  INFO -- :   Rendered systems/edit.js.erb (38.2ms)
I, [2015-08-10T15:07:04.802911 #32735]  INFO -- : Completed 200 OK in 55ms (Views: 51.2ms | ActiveRecord: 0.5ms)
D, [2015-08-10T15:07:04.803729 #32735] DEBUG -- :   [1m[36m (0.5ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.806214 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:04.806304 #32735]  INFO -- : ----------------------------------------
I, [2015-08-10T15:07:04.806334 #32735]  INFO -- : EnvbookingTest: test_presence_of_project
I, [2015-08-10T15:07:04.806356 #32735]  INFO -- : ----------------------------------------
D, [2015-08-10T15:07:04.807139 #32735] DEBUG -- :   [1m[36mUser Load (0.2ms)[0m  [1mSELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.808045 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.808816 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.809258 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.815231 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.815516 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.815832 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.815885 #32735]  INFO -- : -----------------------------------------------
I, [2015-08-10T15:07:04.815907 #32735]  INFO -- : EnvbookingTest: test_end_date_before_start_date
I, [2015-08-10T15:07:04.815926 #32735]  INFO -- : -----------------------------------------------
D, [2015-08-10T15:07:04.816565 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.817153 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.817692 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.818156 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.818519 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.819669 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.819839 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.820091 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.820138 #32735]  INFO -- : ------------------------------------
I, [2015-08-10T15:07:04.820160 #32735]  INFO -- : EnvbookingTest: test_valid_and_works
I, [2015-08-10T15:07:04.820179 #32735]  INFO -- : ------------------------------------
D, [2015-08-10T15:07:04.820612 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.821142 #32735] DEBUG -- :   [1m[36mEnv Load (0.1ms)[0m  [1mSELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.821613 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.822021 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.822383 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.823439 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.823599 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.823833 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.823877 #32735]  INFO -- : ------------------------------------
I, [2015-08-10T15:07:04.823899 #32735]  INFO -- : EnvbookingTest: test_presence_of_env
I, [2015-08-10T15:07:04.823917 #32735]  INFO -- : ------------------------------------
D, [2015-08-10T15:07:04.824372 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.824985 #32735] DEBUG -- :   [1m[36mUser Load (0.1ms)[0m  [1mSELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.825446 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.825746 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.826782 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.826963 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.827219 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:04.827261 #32735]  INFO -- : ------------------------------------
I, [2015-08-10T15:07:04.827281 #32735]  INFO -- : EnvbookingTest: test_presence_of_app
I, [2015-08-10T15:07:04.827299 #32735]  INFO -- : ------------------------------------
D, [2015-08-10T15:07:04.827723 #32735] DEBUG -- :   [1m[36mUser Load (0.1ms)[0m  [1mSELECT  "users".* FROM "users"  ORDER BY "users"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.828194 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.828624 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.828907 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.829939 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mROLLBACK TO SAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.830092 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  rollback transaction
.D, [2015-08-10T15:07:04.830324 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mbegin transaction[0m
I, [2015-08-10T15:07:04.830365 #32735]  INFO -- : -------------------------------------
I, [2015-08-10T15:07:04.830386 #32735]  INFO -- : EnvbookingTest: test_presence_of_user
I, [2015-08-10T15:07:04.830404 #32735]  INFO -- : -------------------------------------
D, [2015-08-10T15:07:04.830765 #32735] DEBUG -- :   [1m[35mProject Load (0.1ms)[0m  SELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.831517 #32735] DEBUG -- :   [1m[36mEnv Load (0.2ms)[0m  [1mSELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.832604 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.833283 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.834715 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.835041 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.835549 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  begin transaction
I, [2015-08-10T15:07:04.835721 #32735]  INFO -- : -------------------------------------------
I, [2015-08-10T15:07:04.835820 #32735]  INFO -- : EnvbookingTest: test_presence_of_start_date
I, [2015-08-10T15:07:04.836015 #32735]  INFO -- : -------------------------------------------
D, [2015-08-10T15:07:04.838361 #32735] DEBUG -- :   [1m[36mProject Load (0.6ms)[0m  [1mSELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.843412 #32735] DEBUG -- :   [1m[35mEnv Load (0.9ms)[0m  SELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.844730 #32735] DEBUG -- :   [1m[36mApp Load (0.3ms)[0m  [1mSELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.845381 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.845771 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.847927 #32735] DEBUG -- :   [1m[35m (0.1ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.848150 #32735] DEBUG -- :   [1m[36m (0.1ms)[0m  [1mrollback transaction[0m
.D, [2015-08-10T15:07:04.848432 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  begin transaction
I, [2015-08-10T15:07:04.848485 #32735]  INFO -- : -----------------------------------------
I, [2015-08-10T15:07:04.848508 #32735]  INFO -- : EnvbookingTest: test_presence_of_end_date
I, [2015-08-10T15:07:04.848527 #32735]  INFO -- : -----------------------------------------
D, [2015-08-10T15:07:04.849051 #32735] DEBUG -- :   [1m[36mProject Load (0.1ms)[0m  [1mSELECT  "projects".* FROM "projects"  ORDER BY "projects"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.849664 #32735] DEBUG -- :   [1m[35mEnv Load (0.1ms)[0m  SELECT  "envs".* FROM "envs"  ORDER BY "envs"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.850191 #32735] DEBUG -- :   [1m[36mApp Load (0.1ms)[0m  [1mSELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1[0m
D, [2015-08-10T15:07:04.850633 #32735] DEBUG -- :   [1m[35mApp Load (0.1ms)[0m  SELECT  "apps".* FROM "apps"  ORDER BY "apps"."id" ASC LIMIT 1
D, [2015-08-10T15:07:04.850955 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mSAVEPOINT active_record_1[0m
D, [2015-08-10T15:07:04.852374 #32735] DEBUG -- :   [1m[35m (0.0ms)[0m  ROLLBACK TO SAVEPOINT active_record_1
D, [2015-08-10T15:07:04.852542 #32735] DEBUG -- :   [1m[36m (0.0ms)[0m  [1mrollback transaction[0m
.

Finished in 1.447624s, 24.8683 runs/s, 33.1578 assertions/s.

  1) Failure:
BookingRequestsControllerTest#test_fail_to_create_with_nil_user [/Users/gnuchu/Documents/code/projects/envbooker/test/controllers/booking_requests_controller_test.rb:60]:
Expected response to be a <error>, but was <200>

36 runs, 48 assertions, 1 failures, 0 errors, 0 skips
