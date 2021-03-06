class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	before_action :set_instance

	def set_instance
		@prefetche = Prefetch.new
		@card = Card.new
		@shop = Shop.new
	end

end
