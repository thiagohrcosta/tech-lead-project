class DeveloperProfilesController < ApplicationController
  before_action :set_user

  def index
    @developer_profiles = DeveloperProfile.all
  end

  def show
    @developer_profile = DeveloperProfile.find(params[:id])
  end

  def new
    @developer_profile = DeveloperProfile.new
  end

  def create
    @developer_profile = DeveloperProfile.new(developer_profile_params)
    @developer_profile.user = @user
    if @developer_profile.save
      redirect_to user_developer_profile_path(@developer_profile)
    else
      render :new
    end
  end

  def edit
    @developer_profile = DeveloperProfile.find(params[:id])
  end

  def update
    @developer_profile = DeveloperProfile.find(params[:id])
    if @developer_profile.update(developer_profile_params)
      redirect_to
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def developer_profile_params
    params.require(:developer_profile).permit(:name, :description, :price)
  end
end
