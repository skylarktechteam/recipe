class RecipesController < ApplicationController

	def index
		@search_term = params[:looking_for]	|| 'chocolate'	#check if a request parameter search was passed in.
		@recipes = Recipe.for(@search_term)  #use the search term as the keyword if supplied, and use a default value of chocolate if not supplied
	end
end

#https://github.com/jhu-ep-coursera/fullstack-course1-module3/wiki#q-why-am-i-getting-uninitialized-constant-capybara-when-running-rspec
#parameter has to be search nor looking for
