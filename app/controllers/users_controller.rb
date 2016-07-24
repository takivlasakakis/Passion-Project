get '/users/new' do
  erb :'/users/new'
end

post '/users/new' do
  @user = User.new(params)
  if @user.save
    login(@user)

    redirect "/users/#{@user.id}"
  else
    @error = "Sorry, you entered in some wrong information - please try again."
    erb :'/users/new'
  end
end

get '/users/:id' do
  if session[:user_id]
   p @user = User.find(session[:user_id])
   p "************************"
   p @subjects = Subject.all
   p "$$$$$$$$$$$$$"
  end

  erb :'/users/show'
end
