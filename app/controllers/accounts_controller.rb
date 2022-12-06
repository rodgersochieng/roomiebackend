class AccountsController < ApplicationController
    def index
        render json: Account.all
      end
    
      def create
        account = @current_user.accounts.create!(account_params)
        render json: account, status: :created 
      end
    
      private
    
      def account_params
        params.permit(:image_url, :name, :institution, :gender, :bio,)
      end
end
