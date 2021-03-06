class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :index, :destroy]
  before_action :correct_user, only: [:edit, :update]
  before_action :admin_user, only: [:destroy, :create, :new]

  def new
    @user = User.new
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 10)
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      @user.send_activation_email
      flash[:info] = t :activate_your_account
      redirect_to root_url
  	else
  		render 'new'
  	end
  end

  def edit
    @update = true
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = t :user_deleted
    redirect_to users_url
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # handle sucessful edits
      flash[:success] = t :profile_updated
      redirect_to @user
    else
      @update = true
      render 'edit'
    end
  end

  private

    def user_params
    	params.require(:user).permit(:name, :email, :password,
  		:password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end

    
end
