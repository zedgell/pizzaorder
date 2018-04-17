require "sinatra"

get '/' do 
	erb :namesex
end

post '/namesex' do 
	firstname = params[:firstname]
	lastname = params[:lastname]
	sirname = params[:sirname]
	pizzacrust = params[:pizzacrust]
	toppings1 = params[:toppings1]
	toppings2 = params[:toppings2]
	toppings3 = params[:toppings3]
	toppings4 = params[:toppings4]
	drink = params[:drink]
	redirect '/final?firstname=' + firstname + '&lastname=' + lastname + '&sirname=' + sirname + '&pizzacrust=' + pizzacrust + '&toppings1=' + toppings1 + '&toppings2=' + toppings2 + '&toppings3=' + toppings3 + '&toppings4=' + toppings4 + '&drink=' + drink
end

get '/final' do 
	firstname = params[:firstname]
	lastname = params[:lastname]
	sirname = params[:sirname]
	pizzacrust = params[:pizzacrust]
	toppings1 = params[:toppings1]
	toppings2 = params[:toppings2]
	toppings3 = params[:toppings3]
	toppings4 = params[:toppings4]
	drink = params[:drink]
	erb :final, :locals => {:firstname => firstname, :lastname => lastname, :sirname => sirname, :pizzacrust => pizzacrust, :toppings1 => toppings1, :toppings2 => toppings2, :toppings3 => toppings3, :toppings4 => toppings4, :drink => drink}
end
