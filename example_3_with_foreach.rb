# frozen_string_literal: true
#
require_relative './helpers'
require 'csv'

benchmark_memory do
  benchmark_time do
    sum = 0

    # A Line at a Time
    CSV.foreach('data.csv', headers: true) do |row|
      sum += row['id'].to_i
    end

    puts "Sum: #{sum}"
  end
end
