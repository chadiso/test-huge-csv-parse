# frozen_string_literal: true
#
require 'benchmark'

def benchmark_memory
  memory_before = `ps -o rss= -p #{Process.pid}`.to_i
  yield
  memory_after = `ps -o rss= -p #{Process.pid}`.to_i

  puts "Memory: #{((memory_after - memory_before) / 1024.0).round(2)} MB"
end

def benchmark_time
  time = Benchmark.realtime do
    yield
  end

  puts "Time: #{time.round(2)}"
end
