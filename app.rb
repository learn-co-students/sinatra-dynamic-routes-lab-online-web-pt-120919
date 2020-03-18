require_relative 'config/environment'

class App < Sinatra::Base
  
   get '/reversename/:name' do
    @reverse_name = params[:name]
    "#{@reverse_name.reverse}"
   end
   
   get '/square/:number' do 
     @result = params[:number].to_i*params[:number].to_i
     "#{@result}"
   end 
   
   get '/say/:number/:phrase' do 
     @product = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      @product += "#{@phrase}\n"
     end 
     @product 
   end  
   get '/say/:word1/:word2/:word3/:word4/:word5' do 
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end 
    get "/:operation/:number1/:number2" do
    @answer = ""
    @number_1 = params[:number1].to_i
    @number_2 = params[:number2].to_i
    if params[:operation] == "add"
      @answer += "#{@number_1+@number_2}"
      @answer
    elsif params[:operation] == "subtract"
      @answer += "#{@number_1-@number_2}"
      @answer
    elsif params[:operation] == "multiply"
      @answer += "#{@number_1*@number_2}"
      @answer
    elsif params[:operation] == "divide"
      @answer += "#{@number_1/@number_2}"
      @answer
    end
  end
end