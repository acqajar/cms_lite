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
		@template = Template.find(:all)
	end

	def home
	end


	def new
		# @template = Template.new
	end



	def edit
		@template = Template.find(params[:id])
	end

end
