class GroupsController < ApplicationController
  def new
    # p "new"
    # respond_to do |format|
    #   format.html { render :layout => false }
    # end
    # render partial: "new"
  end

  def create
    if current_user
      new_group = Group.create(name: params[:group][:name], user_id: current_user.id)

      if(new_group.persisted?)
        new_group.users << current_user
        # redirect_to groups_path
        redirect_to url_for(new_group)
      else
        flash[:group_creation_errors] = new_group.errors.full_messages
        redirect_to :back
      end
    end
  end

  def update
    @group = Group.find(params[:id]).update(description: params[:group][:description])
    redirect_to group_path
  end

  def edit
    @group = Group.find(params[:id])
    @users = @group.users
  end

  def destroy
    @group.destroy
    redirect_to groups_path
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

  def map
    @group = Group.find(params[:id])
    @users = @group.users
  end

  def chat
    @group = Group.find(params[:id])
    @users = @group.users
  end

  def photos
    @group = Group.find(params[:id])
  end

private

  before_filter :require_login

  def require_login
    unless current_user
      redirect_to root_path
    end
  end
end
