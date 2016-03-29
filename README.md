# March Edition
coding challenge repo for hh.ex march edition

## Description:

The span function is a good one to know. It accepts an list and a predicate function and returns a tuple of two lists. The first contains all the elements of the argument list up to the item that caused the first failure of the predicate. The second contains the rest of the original list.

For example,
```elixir
[ 2, 4, 6, 1, 8, 10 ]
|> Span.sort &(Integer.is_even(&1))
# => {[2,4,6],[1,8,10]}
```

**Your task is to...wait for it... write your own span function!!!**
