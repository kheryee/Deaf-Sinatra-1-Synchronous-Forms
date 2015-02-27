require 'byebug'

get '/' do
  @aunty = params[:aunty]
  # puts @aunty
  # Look in app/views/index.erb
  erb :index #this reroute to index.erb
end

post '/aunty' do
  speech = params[:user_input]
  puts "#{speech} speech"
  if speech != speech.upcase
    reply = "Speak up, kiddo!"
  else
    reply = "So that's what you're thinking huh?"
  end
  redirect to("/?aunty=#{reply}")
end


# #changes the address bar to include /?aunty = whatever you said. This will then trigger line 3.
# post '/aunty' do
#   @said = params[:user_input]
#   @said = @said + ''
#   redirect to("/?aunty=#{@said}")
# end

