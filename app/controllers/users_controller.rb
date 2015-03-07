class UsersController < ApplicationController
  def new
  end

  def create
    @group = Group.find(params[:group_id])
    @user = User.find_by(name: params[:name])
    if @group.users.find_by(name: params[:name]) == nil
      render inline: '', status: 418
    elsif @user
      @group.users << @user
    else
      render inline: '', status: 400
    end
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
