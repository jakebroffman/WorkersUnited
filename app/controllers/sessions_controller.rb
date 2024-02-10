class SessionsController < ApplicationController
    before_action :authenticate_user, only: :logout
  
    def login
      user = User.find_by(username: params[:username])
  
      begin
        if user.authenticate(params[:password])
          session[:user_id] = user.id
          render json: user
        end
      rescue ActiveRecord::RecordNotFound
        render json: { error: 'Invalid username or password' }, status: :unauthorized
      end
    end
  
    def logout
      session.delete :user_id
      head :no_content
    end
  end
  