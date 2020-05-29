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

 `!` is the bang operator, which applies an opposite boolean value to an object. `?` implies that a method will provide a boolean outcome.

Explain what would happen in the following scenarios:

1. what is `!=` and where should you use it? 

`!=` means not equal. It should be used in if/else comparison statements.

2. put `!` before something, like `!user_name`

3. put `!` after something, like `words.uniq!`

4. put `?` before something

5. put `?` after something

6. put `!!` before something, like `!!user_name`
