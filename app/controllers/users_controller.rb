class UsersController < ApplicationController
  def new
    @group = Group.find(params[:group_id])
    @user = User.find_by(name: params[:id])
    if @user
      @group.users << @user
    else
      render inline: '', status: 400
    end
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end
end
