class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
     @users = User.paginate(page: params[:page])
  end
  
  def new
      @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user # Save the user id for the new user to the cookie
      flash[:success] = "Welcome to the Sample App!"      
      redirect_to @user # Opens the user page
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Updated information!"
      # Handle a successful update.
      redirect_to @user
    else
      #flash.now[:danger] = "Something went sideways"
      render 'edit'
    end
  end  
  
  private
    # This is hack prevention.  These are strong parameters.
    # Params not listed here cannot be updated with raw html calls like patch.
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end 
  
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end  
    
    # Confirms an admin user.
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
  
end
