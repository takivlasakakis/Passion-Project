helpers do
	def nyt_query
	{'api-key': ENV['NYT_API_KEY'],
		'q': "Trump",
		'begin_date': method_to_get_date,
		'end_date':  method_to_get_date
	}
		
		response = HTTParty.get('https://api.nytimes.com/svc/search/v2/articlesearch.json', query)
		response = JSON.parse(response.to_json)

		return response[put my parse path here]
	end
	

end

