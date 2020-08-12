# Practice Problems: Methods and More Methods

## Practice Problem 1

What is the return value of the `select` method below? Why?

```ruby
[1, 2, 3].select do |num|
  num > 5
  'hi'
end
```

The return value is `[1, 2, 3]` because `.select` evaluates the return value of the block, which is the last expression within the block, and only cares about its truthiness. It then returns a new array containing all elements in the original array.

## Practice Problem 2

How does `count` treat the block's return value? How can we find out?

```ruby
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end
```

`count` evaluates whether or not the block's return value is true for any given iteration. It considers the truthiness of the block's return value. We can find out by [consulting Ruby docs](https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-count). This will return `2` because `str.length < 4` is true for `ant` and `bat`. 
