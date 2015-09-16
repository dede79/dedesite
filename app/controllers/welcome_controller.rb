class WelcomeController < ApplicationController
	
    def homepage
    end

    def thank_you
	  @name = params[:name]
	  @email = params[:email]
	  @message = params[:message]
	  ActionMailer::Base.mail(:from => @email, 
	        :to => 'limahawkins@gmail.com', 
	        :subject => "A new contact form message from #{@name}", 
	        :body => @message).deliver
    end
end
