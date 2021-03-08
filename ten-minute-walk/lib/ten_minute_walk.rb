def ten_minute_walk?(array)
  array.count("e") == array.count("w") && array.count("n") == array.count("s") && array.length == 10
end
