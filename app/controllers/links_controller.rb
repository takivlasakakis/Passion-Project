
get '/links' do
  #pseudocode steps- gettings the request, if successful, what do? if fails what do?
  #if success -
  # erb.index

  #if fail - error page, like an error.erb, "sorry, something went wrong", in that page include a link to home




  # @links = Link.all # will links from the API CALL, extract all the links
  # p "*" * 80

  # #date?, #section_name?
  # @query = { query: {'api-key': ENV["NYT_API_KEY"]}}
  # p @response2 = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json', @query)


 

  erb :'links/index' #show all links view (index)
end

post '/links' do
  @subject = params[:subject]
  # @subject2 = params[:subject2]
  # @subject3 = params[:subject3]
  # @subject4 = params[:subject4]
  @start_date = params[:start_date]
  @end_date = params[:end_date]
  p "*" * 100
  p params
  p "*" * 100
  p @result = nyt_query(@subject, @start_date, @end_date)


  erb :'links/index'
end

