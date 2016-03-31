class Recipe < ActiveRecord::Base


		include	HTTParty

		base_uri "http://food2fork.com/api"
		default_params key: ENV["FOOD2FORK_KEY"] || '08a1ec230a5306cd84482c0b9a756682'
		#hostport = ENV[’FOOD2FORK_SERVER_AND_PORT’] || ’www.food2fork.com’ base_uri "http://#{hostport}/api"
		format :json
		

		def self.for (keyword)
		    get("/get", query: {q: keyword})["recipes"]
		end

		def self.for (keyword)
		    get("/search", query: {q: keyword})["recipes"]
		end

end


#key_value = ENV[’FOOD2FORK_KEY’]

#pp Recipe.for "ruby"


#def get(path, options = {}, &block)
#      perform_request Net::HTTP::Get, path, options, &block
#end