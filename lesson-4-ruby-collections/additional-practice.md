# Practice Problems: Additional Practice

## Practice Problem 1

Turn the below array into a hash where the names are the keys and the values are the positions in the array.

```ruby
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
```

## Practice Problem 2

Add up all of the ages from the Munster family hash:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.sum
```

## Practice Problem 3

In the age hash, remove people with age 100 and greater.

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.keep_if { |_,age| age < 100 }
```

## Practice Problem 4

Pick out the minimum age from our current Munster family hash:

```ruby
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min
```

## Practice Problem 5

In the array below, find the index of the first name that starts with "Be"

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.index { |name| name.include?("Be") }
```

## Practice Problem 6

Amend this array so that the names are all shortened to just the first three characters:

```ruby
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0,3] }
```

## Practice Problem 7

Create a hash that expresses the frequency with which each letter occurs in this string:

```ruby
statement = "The Flintstones Rock"
```
