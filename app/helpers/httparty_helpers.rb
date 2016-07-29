helpers do
	def nyt_query(subject, start_date, end_date)

		query = {query:
		{'api-key': ENV['NYT_API_KEY'],
			'fq': "section_name:#{subject}",
			'begin_date': start_date ,
			'end_date': end_date }
		}
		response = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json', query)
		response = JSON.parse(response.to_json)

		response
		
		# return {first_response: response["response"]["docs"].first["web_url"], second_response: response["response"]["docs"].first["headline"]["main"]}
		pull_out(response["response"]["docs"])
	end

	def pull_out(nyt_hash)
		result = []
		counter = 0
		while counter < 10
				result << {url: nyt_hash[counter]["web_url"], headline: nyt_hash[counter]["headline"]["main"]}

			counter += 1
		end

		return result
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

    # <form action="/links">
    #   <% @subjects.each do |subject|  %>
    #   <input type="checkbox" name="subject" value="<%= subject.title %>"> <%= subject.title %><br>
    #   <% end %>
    #   <input type="submit" value="Submit">
    # </form>

    	# def process_request(request)
	# 	JSON.parse(request.response.body) #(could be JSON.parse(request.response.body))
	# 	# request['response']['meta']['hits']

 #  		["response"]["docs"].first["web_url"] - this returns url
 #  		["response"]["docs"].first["headline"]["main"] - this returns the headline
	# end