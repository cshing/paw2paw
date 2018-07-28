class ApplicationController < ActionController::Base
	def index
		
		@sitters = Sitter.all
		@sitter = Sitter.first

	end
end
