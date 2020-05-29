# Practice Problems: Easy 2

## Question 1

In this hash of people and their age,

```
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
```

see if "Spot" is present.

```
ages.has_key?("Spot") # false
```

**Bonus:** What are two other hash methods that would work just as well for this solution?

```
ages.select { |k| k == "Spot" } # returns empty hash
ages.key?("Spot") # false

# Launch solution: Hash#include? and Hash#member?
```

## Question 2

Starting with this string:

```
munsters_description = "The Munsters are creepy in a good way."
```

Convert the string in the following ways (code will be executed on original `munsters_description` above):

```
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"The munsters are creepy in a good way."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
```

```
munsters_description.swapcase!
munsters_description.capitalize!
munsters_description.downcase!
munsters_description.upcase!
```

## Question 3

We have most of the Munster family in our age hash:

```
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
```

add ages for Marilyn and Spot to the existing hash

```
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
```

```
ages.merge!(additional_ages)
```

## Question 4

See if the name "Dino" appears in the string below:

```
advice = "Few things in life are as important as house training your pet dinosaur."
```

```
advice.include? "Dino" # my solution
advice.match?("Dino) # Launch's solution
```

## Question 5

Show an easier way to write this array:

```
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
```

```
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```

## Question 6

How can we add the family pet "Dino" to our usual array:

```
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
```

```
flintstones << "Dino"
```

## Question 7

In the previous practice problem we added Dino to our array like this:

```
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"
```

We could have used either `Array#concat` or `Array#push` to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)
