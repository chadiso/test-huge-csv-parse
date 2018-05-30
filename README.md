First, let's generate a Huge CSV with **500000** lines:
```ruby
$> ruby ./generate_huge_csv.rb
Time: 4.64
Memory: 1.49 MB
```

So...
1. In case of using `CSV.read`, the results are:
```ruby
$> ruby ./example_1_with_read.rb
Sum: 124999750000
Time: 11.37
Memory: 546.92 MB
```

2. In case of using `CSV.parse`, the results are:
```ruby
$> ruby ./example_2_with_parse.rb
Sum: 124999750000
Time: 10.63
Memory: 618.98 MB
```

3. In case of using `CSV.foreach`, the results are:
```ruby
$> ruby ./example_3_with_foreach.rb
Sum: 124999750000
Time: 8.02
Memory: 1.21 MB
```

**3 => Profit!**
