class UsersController < ApplicationController
    before_action :authenticate_user!

    def create
      @user = User.new(params[:user])

      respond_to do |format|
        if @user.save

          # Sends email to user when user is created.
          WelcomeMailer.new_user(@user).deliver

          format.html { redirect_to @user, notice: 'User was successfully created.' }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end

def index
end

def show
@users = User.find(params[:id])
end

def edit
end

  end
