class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit

  end

  def create
    @user = User.new(user_params)
    if @user.save
<<<<<<< HEAD
      session[:user_id] = @user.id
=======
>>>>>>> 6eea5c94dcd3075e80929bde240b936dffc59413
      flash[:success] = "Welcome to the Flock"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def new
    @user = User.new
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:twitch_profile_name, :display_name, :password, :password_confirmation)
  end

end