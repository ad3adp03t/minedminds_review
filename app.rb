require "sinatra"

get '/' do
  erb :sandwich_parts
end


post '/sand_results' do
	topping = params[:topping].to_s
	erb :sand_results
	redirect '/confirmation?topping=' + topping
end	

get '/confirmation' do
	topping = params[:topping].split
	erb :confirmation, :locals => {:topping=>topping}
end	

post '/resultsroute' do
	topping = params[:topping1].to_s
	erb :resultsroute
	redirect '/results?topping1=' + topping1
end
# post '/confirmation' do
# 	topping1 = params[:topping1].to_s
# 	erb :results
# 	redirect '/results?topping1=' + topping1
# end	

get '/results' do
	topping1 = params[topping1].to_a
	erb :results, :locals => {:topping1=>topping1}
end	
# post '/results' do
# 	topping1 = params[:topping1].to_s
# 	erb :resultsroute
# 	redirect '/results?topping1=' + topping1
# end





