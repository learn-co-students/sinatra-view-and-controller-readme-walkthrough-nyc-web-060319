require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do  #goes to reverse.erb 
    erb :reverse
  end
  
  #gets the form that was filled out in reverse.erb. Hitting submit makes the form do whatever HTTP action was described
  # in the <form> tag and execute that action on whatever url was pointed to. 
  #In this case, the HTTP action was POST, and was executed on /reverse 
  #When this action occurs, the engine will look for a function described like that: it's going to look for post "/reverse"
  #When it finds the function that matches the HTTP action and url-to-be-executed on, it performs the code within the method body
  # So, post "/reverse" will take the data provided by the form that was just filled out, and in the form of the params hash.
  #
  #jump to reversed.erb, which shows the HTML "Reversed Ultimate String!" and the result.
  post '/reverse' do 
    original_string = params["string"]
    @reversed_string = original_string.reverse

    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    # Write your code here!
    erb :friends
  end
end