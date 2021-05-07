class ContractsController < ApplicationController
  before_action :set_developer, only: [:new, :create, :show]

  def show
    @contract = Contract.find(params[:id])
  end

  # não precisa do new
  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new
    @contract.user = current_user
    @contract.developer_profile = @developer_profile
    if @contract.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to user_path(current_user)
  end

  private

  # def set_user
  #   @user = current_user
  # end

  # show, edit, create, destroy
  def set_contract
  end

  def set_developer
    @developer_profile = DeveloperProfile.find(params[:developer_profile_id])
  end

  # def contract_params
  #   params.require(:contract).permit(:developer_profile,:user)
  # end
end
