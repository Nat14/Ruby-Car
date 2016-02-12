class Celsius
  def initialize(temperature)
    @temperature = temperature
  end

  def toFahrenheit
    return (@temperature * 1.8 + 32).round.to_s + " degrees F"
  end
end


week = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
temp_in_c = []
week.each_with_index do |day, index|
   print "Input temperature for #{day}: "
   temp_in_c[index] = gets.chomp.to_i
 end

temp_in_c.each_with_index do |x, i|
  puts week[i].to_s + " | " + Celsius.new(x).toFahrenheit.to_s + " | " + x.to_s + " degrees C"
end
