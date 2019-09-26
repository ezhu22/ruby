class RpgController < ApplicationController
    

    def farm
        session[:location] = 'farm'
        redirect_to '/process_location'
    end

    def cave
        session[:location] = 'cave'
        redirect_to '/process_location'
    end

    def casino
        session[:location] = 'casino'
        redirect_to '/process_location'
    end

    def house
        session[:location] = 'house'
        redirect_to "/process_location"
    end

    def index
        session[:gold] = 0 if ! session.include? (:gold)
        session[:location] = '' if ! session.include? (:location)
        session[:msg] = [] if ! session.include? (:msg)
    end

    def reset
        session.clear
        redirect_to "/rpg/index"
    end

    def process_location
        if session[:location] == 'farm'
            rand_gold = rand(10..20)
            session[:gold] += rand_gold
            session[:msg].push('At the farm, you earned ' + rand_gold.to_s)
            redirect_to '/rpg/index'
        end
        if session[:location] == 'cave'
            rand_gold = rand(5..10)
            session[:gold] += rand_gold
            session[:msg].push('At the cave, you earned ' + rand_gold.to_s)
            redirect_to '/rpg/index'
        end
        if session[:location] == 'casino'
            rand_gold = rand(50)
            gamble = rand(10)
            if gamble > 6
                session[:gold] += rand_gold
                session[:msg].push('You gambled and won ' + rand_gold.to_s)
            else
                if session[:gold] - rand_gold <= 0
                    session[:location] = 'bankrupt!'
                    session[:gold] = 0
                    session[:msg].push('You gambled and lost all your money at the casino!')
                else
                    session[:gold] -= rand_gold
                    session[:msg].push('You gambled and lost ' + rand_gold.to_s)
                end 
            end
            redirect_to '/rpg/index'
        end
        if session[:location] == 'house'
            rand_gold = rand(2..5)
            session[:gold] += rand_gold
            session[:msg].push('At the house, you earned ' + rand_gold.to_s)
            redirect_to '/rpg/index'
        end
    end
end
