class SessionsController < ApplicationController
    def create 
         user=User.where("email=? AND password=?",params[:email],params[:password]).first 
         if user.present?   
            session[:user_id]=user.id
              redirect_to user_path(session[:user_id]) , :notice=>"Logged in successfully"
         else
            flash.now[:alert]="Invalid login/password combination"
            render :action => 'new'
         end
    end
    def destroy 
          reset_session
          redirect_to root_path , :notice=>"you successfully logout"
    end
    def login
          
         user=User.find(params[:user])       
         
         if user.present?   
            session[:user_id]=user.id
          
              redirect_to user_path(session[:user_id]) , :notice=>"Logged in successfully"
         else
            
            flash.now[:alert]="Invalid login/password combination"
            render :action => 'new'
         end
    end
end
