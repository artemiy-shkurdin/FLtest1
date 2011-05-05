def seq(str)
  str.gsub(/(.)\1*/) {$&.length.to_s + $1}
end

step = 1
num = "1"
puts "How many times do?"
times = gets.to_i
times.times do
  puts "["+step.to_s+"] "+num
  num = seq(num)
  step = step + 1
  if step%6 == 1 :
    num = (num.to_i + 1).to_s
  end 
end