require 'active_record'

db_params = {
  database: 'omniavatar_test',
  adapter: 'sqlite3'
}
ActiveRecord::Base.establish_connection db_params
