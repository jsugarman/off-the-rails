require 'sequel'
require_relative 'lib/initializers/database'

class MyApp
  def books
    @books ||= DB[:books]
  end
end

Application = MyApp.new
