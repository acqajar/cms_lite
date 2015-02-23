class PagesController < ApplicationController

	def create
		# 
		@template = Template.where(:id => params[:template_id]).first
		@page = Page.new(:template_id => @template.id, 
	 		:user_id => params[:user_id], 
	 		:html => @template.html,
	 		:css => @template.css,
	 		:js => @template.js
			)
		if @page.save
			redirect_to edit_user_page_path(current_user, @page)
		end
	end



	def edit
		@user = User.where(id: params[:user_id]).first
		@page = Page.where(id: params[:id]).first
	end



	def update  
	 
	end  



	end

