require "rubygems"
require "sinatra"
require "pry"

helpers do

  def randomize_text(text)
    # Takes a string and returns an array
    text.split(" ").shuffle.join(" ")
  end

end




get "/" do
  "Hello world"
end

get "/about" do
  erb :about
end

get "/random" do
  erb :random
end

post "/random" do
  session[:text] = params[:entered_text]
  @returned_text =   randomize_text(session[:text])
  erb :random
end