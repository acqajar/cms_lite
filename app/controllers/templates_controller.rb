class TemplatesController < ApplicationController
	# before_filter :load_template
	# layout :html :css :js

	# def layout
	# 	@current_template.layout_name
	# end

	

	def show
		@template = Template.find(params[:id])
	end


	def index
		# user = User.where(id: params[:user_id]).first
		@templates = Template.all
	end



	def new
		puts "============================="
		puts current_user.inspect
		puts "============================="
	end



	def edit
		@template = Template.find(params[:id])
	end

end	