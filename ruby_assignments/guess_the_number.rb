def guess_number guess
    number = 25
    if guess == 25
        puts "You guessed correctly!"
    else 
        if guess < number
            puts "Your guess was too low."
        end
        if guess > number
            puts "Your guess was too high."
        end
    end
end

guess_number 20
guess_number 30
guess_number 25