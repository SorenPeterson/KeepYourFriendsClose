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
    @users = []
    group = Group.find(params[:group_id])
    group.users.each do |user|
      if user.id != current_user.id
        @users << user
      end
    end
      render json: @users, status: 200
  end

  def show
    p params[:id]
    @user = User.find(params[:id])
    p params[:latitude]
    @user.update_attributes(latitude: params[:latitude], longitude: params[:longitude])
  end

end
