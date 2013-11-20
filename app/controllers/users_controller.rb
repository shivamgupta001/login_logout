class UsersController < ApplicationController
def index
end
def new
  @user=User.new 
end
def create
  @user=User.create(params[:user])
    if @user.save
        redirect_to user_signin_path(:user=>@user.id) 
    else
        flash ="Email already taken"      
        render :new
    end
end 
def show
   
  if current_user.present?  
    @user=User.find(session[:user_id])
  else
    redirect_to root_path
  end
end
end
