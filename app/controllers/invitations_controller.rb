class InvitationsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:name])
    @group = Group.find(params[:group_id])

    # if @user && (@group.users.find_by(name: params[:name]) != nil || Invitation.find_by(user_id: @user.id, group_id: params[:group_id]) == nil)
    # elsif @user
    # else
    #   render inline: '', status: 400
    # end

    if @user && @group.users.find_by(name: params[:name]) == nil && Invitation.find_by(user_id: @user.id, group_id: params[:group_id]) == nil
      Invitation.create(user_id: @user.id, group_id: params[:group_id])
      # render inline: ''
      render json: @user
    else
      render inline: '', status: 418
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @invitations = Invitation.where(user_id: current_user.id)

  end

  def show
  end

  def accept
    @invitation = Invitation.find(params[:id])
    @invitation.group.users << current_user
    @invitation.destroy
    redirect_to :back
  end

  def decline
    Invitation.find(params[:id]).destroy
    redirect_to :back
  end
end
