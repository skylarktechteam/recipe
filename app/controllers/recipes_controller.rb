class RecipesController < ApplicationController

#parameter has to be 'search' not 'looking for'
	def index
		@search_term = params[:search]	|| 'chocolate'	#check if a request parameter search was passed in.
		@recipes = Recipe.for(@search_term)  #use the search term as the keyword if supplied, and use a default value of chocolate if not supplied
	end

	def show
		@recipes = Recipe.all
	end

end

#https://github.com/jhu-ep-coursera/fullstack-course1-module3/wiki#q-why-am-i-getting-uninitialized-constant-capybara-when-running-rspec

