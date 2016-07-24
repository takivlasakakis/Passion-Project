get '/links' do

  @links = Link.all #define instance variable for view

  erb :'links/index' #show all links view (index)

end

get '/links/new' do

  erb :'links/new' #show new links view

end

post '/links' do

  #below works with properly formatted params in HTML form
  @link = Link.new(params[:link]) #create new link

  if @link.save #saves new link or returns false if unsuccessful
    redirect '/links' #redirect back to links index page
  else
    erb :'links/new' # show new links view again(potentially displaying errors)
  end

end

