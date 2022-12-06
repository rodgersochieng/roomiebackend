class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json:user, status: :created

    end

   def show
    user = User.find(session[:user_id])
    render json: user
   end


    private
    def user_params
        params.permit(:username, :password, :password_confirmation)
    end

    def record_invalid(invalid)
        render json:{errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

    def record_not_found
        render json:{error: "Not authorized"}, status: 401
    end
end
