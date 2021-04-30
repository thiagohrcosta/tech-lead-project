class ContractsController < ApplicationController
    before_action :set_user
    before_action :set_developer
       
      def show
        @contract = Contract.find(params[:id])
      end
    
      def new
        @contract = Contract.new
      end
    
      def create
        @contract = Contract.new(contract_params)
        @contract.user = @user
        if @contract.save
          redirect_to user_path(@user)
        else
          render :new
        end
      end

      def destroy
        @contract.destroy
        redirect_to user_path(@user)
      end
    
    private
    
       def set_user
         @user = User.find(params[:user_id])
       end
       
       def set_developer
        @developer_profile = Developer_profile.find(params[:developer_profile_id])
       end

    
      def contract_params
        params.require(:developer_profile, :user)
      end
end
