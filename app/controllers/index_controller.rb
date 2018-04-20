class IndexController < ApplicationController
	def index
		if params[:lang]
  			session[:lang] = params[:lang]
		elsif session[:lang]
		else
			session[:lang] = "ua"
		end

	end
end
