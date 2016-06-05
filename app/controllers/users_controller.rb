class UsersController < ApplicationController
    before_action :authenticate_user!


def index
end

def show
@users = User.find(params[:id])
end

def edit
end

  end
