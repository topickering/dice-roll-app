class Dice

def roll(n)
  results = []
  n.to_i.times { results << rand(1..6) }
  results.each {|i| puts i.to_i}
end

end
