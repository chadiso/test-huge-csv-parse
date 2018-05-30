# frozen_string_literal: true
#
require_relative './helpers'
require 'csv'

benchmark_memory do
  benchmark_time do
    csv = CSV.read('data.csv', headers: true)
    sum = 0

    csv.each do |row|
      sum += row['id'].to_i
    end

    puts "Sum: #{sum}"
  end
end

