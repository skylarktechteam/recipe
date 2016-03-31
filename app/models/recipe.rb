class Recipe < ActiveRecord::Base

	class Recipe

		include	HTTParty

		base_uri 'http://food2fork.com/api/search'
		default_params fields: "smallIcon,shortDescription", q: "search"
		format :json

		def self.for term
			get ("", query: {query: term} )["elements"]
		end

	end

end

#pp Recipe.for "ruby"


#def get(path, options = {}, &block)
#      perform_request Net::HTTP::Get, path, options, &block
#end