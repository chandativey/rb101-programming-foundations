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

## Practice Problem 3

What is the return value of `reject` in the following code? Why?

```ruby
[1, 2, 3].reject do |num|
  puts num
end
```

According to [the Ruby Docs](https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-reject), `reject` returns an array for all elements of `enum` for which the given `block` returns `false`. Because the block returns `nil`, its value is "falsey", therefore `reject` will return `[1, 2, 3]`.

## Practice Problem 4

What is the return value of `each_with_object` in the following code? Why?

```ruby
['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end
```

According to [the Ruby docs](https://ruby-doc.org/core-2.7.1/Enumerable.html#method-i-each_with_object), `each_with_object` iterates the given block for each element with an arbitrary object given, and returns the initially given object. This results in a return value of `{"a" => "ant", "b" => "bear", "c" => "cat"}`

## Practice Problem 5

What does `shift` do in the following code? How can we find out?

```ruby
hash = { a: 'ant', b: 'bear' }
hash.shift
```

We can find out by deferring to [the Ruby Docs](https://ruby-doc.org/core-2.7.1/Hash.html#method-i-shift): `shift` on a Hash removes a key-value pair from *hsh* and returns it as the two-item array [key, value], or the hash's default hash if the hash is empty. In this code, `shift` will return [a, "ant"] and remove that data from `hash`, modifying it destructively.

## Practice Problem 6

What is the return value of the following statement? Why?

```ruby
['ant', 'bear', 'caterpillar'].pop.size
```

According to [the Ruby docs](https://ruby-doc.org/core-2.7.1/Array.html#method-i-pop), `pop` removes the last element from `self` and returns it, and `size` is an alias for `length` ([docs here](https://ruby-doc.org/core-2.7.1/Array.html#method-i-length)), which returns the number of elements in `self`. 

The last element is `caterpillar`, and the number of elements in it is `11`, therefore that is what will be returned. 

## Practice Problem 7

What is the **block**'s return value in the following code? How is it determined? Also, what is the return value of `any?` in this code and what does it output?

```ruby
[1, 2, 3].any? do |num|
  puts num
  num.odd?
end
```

The block's return value is a boolean, `true` if the given item is odd and `false` if not. It is determined by the last evaluated expression in the block. The return value of `any?` is `true` and it outputs `true`. 

## Practice Problem 8

How does `take` work? Is it destructive? How can we find out?

```ruby
arr = [1, 2, 3, 4, 5]
arr.take(2)
```

`take` returns the first `n` elements from the array; in the above code it will return `[1, 2]`. It is not destructive. We can find out by either testing in `irb` or [checking the Ruby docs](https://ruby-doc.org/core-2.7.1/Array.html#method-i-take).

## Practice Problem 9

What is the return value of `map` in the following code? Why?

```ruby
{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end
```

`map` returns `[nil, 'bear']` because only `bear` is a string greater than 3 characters. If none of the conditions of an `if` statement evaluates as `true`, the `if` statement itself returns `nil`, and that's what happens with `ant`.

`map` considers the return value of the block and performs transformation on the item, then takes this value and places it in a new array. This is repeated for each element in the original collection.

## Practice Problem 10

What is the return value of the following code? Why?

```ruby
[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end
```

`[1, nil, nil]` is returned. In the `if` statement in the block, the first condition states if `num` is *greater* than `1`, `puts num`. `puts` always returns `nil`. if `num` is *not greater* than `1`, then return `num`. 
