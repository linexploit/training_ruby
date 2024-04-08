def is_multiple_of_3_or_5?(number)
    number % 3 == 0 || number % 5 == 0
end

def sum_of_3_or_5_multiples(number)
    return "Yo ! Je ne prends que les entiers naturels. TG." unless number.is_a?(Integer) && number >= 0
    
    sum = 0
    (1..number-1).each do |i|  # Iterate up to number-1
       sum += i if is_multiple_of_3_or_5?(i)
    end
    sum
end


#(1..1000) inclut les entiers de 1 à 1000.
#(1...1000) inclut les entiers de 1 à 999.

#sum_of_3_or_5_multiples(11) #=> 33
#sum_of_3_or_5_multiples(10) #=> 23