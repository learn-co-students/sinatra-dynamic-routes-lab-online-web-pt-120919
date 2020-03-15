require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    result = @num * @num
    "#{result}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    "#{params[:phrase] * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case operation
      when "add"
        result = @num1 + @num2
        "#{result}"
      when "subtract"
        result = @num1 - @num2
        "#{result}"
      when "multiply"
        result = @num1 * @num2
        "#{result}"
      when "divide"
        result = @num1 / @num2
        "#{result}"
    end
  end
end
