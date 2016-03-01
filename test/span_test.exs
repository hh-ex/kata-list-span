defmodule SpanTest do
  use ExUnit.Case
  require Integer

  @items [ 2, 4, 6, 1, 8, 10 ]

  test "even list with numbers" do
    {good, rest} = Span.sort(@items, &(Integer.is_even(&1)))
    assert good == [2,4,6]
    assert rest == [1,8,10]
  end

  test "uneven list with numbers" do
    {good, rest} = Span.sort(@items ++ [11], &(Integer.is_even(&1)))
    assert good == [2,4,6]
    assert rest == [1,8,10,11]
  end

  test "only good canidates" do
    {good, rest} = Span.sort([2,4,6,8], &(Integer.is_even(&1)))
    assert good == [2,4,6,8]
    assert rest == []
  end

  test "starts with bad canidate" do
    {good, rest} = Span.sort([11] ++ @items, &(Integer.is_even(&1)))
    assert good == []
    assert rest == [11,2,4,6,1,8,10]
  end

  test "boolean values in list" do
    {good, rest} = Span.sort([true, false, true, false], &(&1))
    assert good == [true]
    assert rest == [false, true, false]
  end
end
