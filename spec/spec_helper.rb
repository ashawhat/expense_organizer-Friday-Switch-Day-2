require 'rspec'
require 'pg'
require 'purchase'

DB = PG.connect(:dbname => 'expense_organizer_test')

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM purchase *;")
  end
end
