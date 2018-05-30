require 'csv'
require_relative 'helpers'

NUMBER_OF_ROWS = 500000

headers = %w(id name email city street country)

name    = 'Roman Osidach'
email   = "roman.osidach@jetruby.com"
city    = "Lviv"
street  = 'Shevchenka Ave, 7'
country = 'Ukraine'

benchmark_memory do
  benchmark_time do
    CSV.open('data.csv', 'w', write_headers: true, headers: headers) do |csv|
      NUMBER_OF_ROWS.times do |i|
        csv << [i, name, email, city, street, country]
      end
    end
  end
end
