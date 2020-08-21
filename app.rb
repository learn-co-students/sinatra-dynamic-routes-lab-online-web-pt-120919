require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @answer = params[:number].to_i
    @answer = @answer * @answer
    "#{@answer}"
  end

  get '/say/:number/:phrase' do
    @answer = params[:phrase] * params[:number].to_i
    "#{@answer}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @answer = params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
    "#{@answer}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
    end
    "#{@answer}"
  end

end
