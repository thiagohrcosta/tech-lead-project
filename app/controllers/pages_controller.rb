class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @users = User.all
    @developer_profiles = DeveloperProfile.all
  end
end
