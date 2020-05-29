# Practice Problems: Easy 1

## Question 1
What would you expect the code below to print out?
```ruby
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
```

`uniq` doesn't mutate `numbers`, and `puts` automatically converts objects to strings, so it'll print:
```
1
2
2
3
```

## Question 2

Describe the difference between `!` and `?` in Ruby. 

 `!` applies an opposite boolean value to an object. `?` implies that a method will provide a boolean outcome. They're generally used as part of method names, not in Ruby syntax. What happens depends on method implementation.

Explain what would happen in the following scenarios:

1. what is `!=` and where should you use it? 

`!=` means not equal. It should be used in if...else comparison statements.

2. put `!` before something, like `!user_name`

`!` before something means the opposite of that thing's boolean.

3. put `!` after something, like `words.uniq!`

`!` before something means that it's mutating that something. `words.uniq!` would permanently alter `words`. 

4. put `?` before something is used as the ternary opeartor for if...else

`?` before something 

5. put `?` after something

`?` after something in Ruby means that you can expect a boolean output.

6. put `!!` before something, like `!!user_name`

`!!` before something turns it into their boolean equiavelent. 

## Question 3

Replace the word "important" with "urgent" in this string:

```
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!("important", "urgent")
```

## Question 4

The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

```
numbers = [1, 2, 3, 4, 5]
```

What do the following method calls do (assume we reset `numbers` to the original array between method calls)?

```
numbers.delete_at(1) # removes the element at index 1 (2)
numbers.delete(1) # removes the number 1 (which is index 0)
```

## Question 5

Programmatically determine if 42 lies between 10 and 100.

*hint: Use Ruby's range object in your solution.*

```
42.between?(10, 100) # my solution
(10...100).cover?(42) # Launch's solution
```

## Question 6

Starting with the string:

```
famous_words = "seven years ago..."
```

show two different ways to put the expected "Four score and " in front of it.

```
famous_words.prepend "Four score and " # 1st method
"Four score and " + famous_words # 2nd method
```

## Question 7

If we build an array like this:

```
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
```

We will end up with this "nested" array:

```
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
```

Make this into an un-nested array.

```
flintstones.flatten!
```

## Question 8

Given the hash below

```
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
```

Turn this into an array containing only two elements. Barney's name and Barney's number

```
flintstones.assoc("Barney")
```
