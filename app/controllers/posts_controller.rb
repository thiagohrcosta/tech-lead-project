class PostsController < ApplicationController

  def index
       @users = User.all
    @developer_profiles = DeveloperProfile.all
    @posts = Post.order(created_at: :desc).all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    find_contract
    @post = Post.new
  end

  def create
    find_contract
    @post = Post.new(post_params)
    @post.contract = @contract
    @post.user = current_user

    if @post.save
      redirect_to contract_posts_path
    else
      render :new
    end
  end

  private

  def find_contract
    @contract = Contract.find(params[:contract_id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def post_params
    params.require(:post).permit(:message)
  end
end
