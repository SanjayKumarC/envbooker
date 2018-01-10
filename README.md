# README #

Has been upgraded for Rails 5. YMMV. Had to remove error_spans this seems to be deprecated.

Tool for managing multiple concurrent resources. Uses timeline instead of calendar.

Clone the repository
`bundle install`
`bin/rake db:create`
`bin/rake db:migrate`
If you want sample data rename db/example_seeds.rb db/seeds.rb and
`bin/rake db:seed`

