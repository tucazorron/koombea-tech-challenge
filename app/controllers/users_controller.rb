class UsersController < ApplicationController

  def signup
    @user = User.new(user_params)
    if @user.save
      render json: @user, status: :created
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by_email(params[:email])
    if @user&.authenticate(params[:password_digest])
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: { token: token, exp: time.strftime("%m-%d-%Y %H:%M"), id: @user.id }, status: :ok
    else
      render json: { error: @user.errors.full_messages }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:email, :password_digest)
  end
    
end