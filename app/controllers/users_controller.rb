class UsersController < ApplicationController
   skip_before_action :ensure_user_logged_in
 
   def new
     render "users/new"
   end
 
   def create
     user = User.new(
       name: params[:name],
       last_name: params[:last_name],
       email: params[:email],
       password: params[:password]
     )
     if user.save
       redirect_to "/"
     else
       flash[:error] = user.errors.full_messages.join(", ")
       redirect_to new_user_path
     end
   end
 end