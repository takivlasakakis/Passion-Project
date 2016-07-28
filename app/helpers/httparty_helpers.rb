helpers do
	def nyt_query
		{'api-key': ENV['NYT_API_KEY'],
			'q': "Trump",
			'begin_date': today,
			'end_date':  method_to_get_date
		}
		
		response = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json', query)
		response = JSON.parse(response.to_json)

		return response[put my parse path here]
	end

	def todays_date
		Time.now
	end


end

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
