require 'pry-byebug'

def main(stock_prices)
    best_choice = [0, 0]
    stock_prices.each do |n|
        stock_prices.each do |i|
            unless n - i < 0
                if best_choice.first - best_choice.last < n - i
                    best_choice = [n, i]
                end
            end
        end
    end
    best_choice[0] = stock_prices.find_index(best_choice[0]) + 1
    best_choice[1] = stock_prices.find_index(best_choice[1]) + 1
    p best_choice
    best_choice
end
stock_prices = [17,3,6,9,15,8,6,2,1]

main(stock_prices)