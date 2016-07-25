
get '/links' do
  #pseudocode steps- gettings the request, if successful, what do? if fails what do?
  #if success -
  # erb.index

  #if fail - error page, like an error.erb, "sorry, something went wrong", in that page include a link to home




  @links = Link.all # will links from the API CALL, extract all the links
  p "*" * 80
  @query = { query: {'api-key': ENV["NYT_API_KEY"], }}
  p @response2 = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json', @query)
  binding.pry

  # @response2["response"]["docs"].first["web_url"] - this returns url
  # @response2["response"]["docs"].each 20.do ["web_url"] -


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

