class ApplicationController < ActionController::Base
	def index
		
		@sitters = Sitter.all

	end
end
