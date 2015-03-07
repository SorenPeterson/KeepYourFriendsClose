class GroupsController < ApplicationController
  def new
  end

  def create
    if current_user
      new_group = Group.create(name: params[:group][:name], user_id: current_user.id)

      if(new_group.persisted?)
        new_group.users << current_user
        redirect_to groups_path
      else
        flash[:group_creation_errors] = new_group.errors.full_messages
        redirect_to :back
      end
    end
  end

  def update
  end

  def edit
    @group = Group.find(params[:id])
    @users = @group.users
  end

  def destroy
  end

  def index
    @groups = current_user.groups if current_user
  end

  def show
    @group = Group.find(params[:id])
    @users = @group.users
    unless (@users.find_by(id: current_user.id))
      redirect_to groups_path
    end




  end

private

  before_filter :require_login

  def require_login
    unless current_user
      redirect_to root_path
    end
  end
end
