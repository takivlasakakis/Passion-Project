get '/links' do

  @links = Link.all # will links from the API CALL, extract all the links
  @request = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

  puts response.body, response.code, response.message, response.headers.inspect

  erb :'links/index' #show all links view (index)

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

