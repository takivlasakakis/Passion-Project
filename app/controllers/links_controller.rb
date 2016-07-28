
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
  # binding.pry

  # @response2["response"]["docs"].first["web_url"] - this returns url
  # @response2["response"]["docs"].first["headline"]["main"] - this returns the headline

  #how the fuck will i loop this?
  # @response2["response"]["docs"].each 20.do ["web_url"] -
  #headline["main"]
  #web_url

#   q
# fq
# section_name:"World"
# begin_date
# 20160724
# end_date
# 20160724
# sort

  # uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
  # http = Net::HTTP.new(uri.host, uri.port)
  # http.use_ssl = true
  # uri.query = URI.encode_www_form({
  #   "api-key" => ,
  #   "fq" => "section_name:\"World\"",
  #   "begin_date" => "20160724",
  #   "end_date" => "20160724"
  #   })
  # request = Net::HTTP::Get.new(uri.request_uri)
  # @result = JSON.parse(http.request(request).body)
  # puts @result.inspect

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

