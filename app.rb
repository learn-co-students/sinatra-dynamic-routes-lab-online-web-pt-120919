require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name].reverse
    "#{name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number * number}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    string = ""
    number.times {string.concat("#{phrase}\n")}
    "#{string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    5.times do |i|
      word_param = "word#{i+1}"
      input = params[word_param.to_sym]
      string.concat("#{input} ")
    end
    "#{string.strip}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation = params[:operation]
      when "add"
        "#{num1 + num2}"
      when "subtract"
        "#{num1 - num2}"
      when "multiply"
        "#{num1 * num2}"
      when "divide"
        "#{num1 / num2}"
      else
        "Invalid Operation"
      end
    end
end
