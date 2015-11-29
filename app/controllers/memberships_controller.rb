class MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end

  def show
    @membership = Membership.find(params[:id])
  end

  def new
    @membership = Membership.new
    @group = Group.find(params[:id])
  end

  def create

    @membership = Membership.new
    @membership.group_id = params[:group_id]
    @membership.user_id = params[:user_id]

    if @membership.save
      redirect_to "/groups", :notice => "Membership created successfully."
    else
      render 'new'
    end
  end

  def edit
    @membership = Membership.find(params[:id])
  end

  def update
    @membership = Membership.find(params[:id])

    @membership.group_id = params[:group_id]
    @membership.user_id = params[:user_id]

    if @membership.save
      redirect_to "/memberships", :notice => "Membership updated successfully."
    else
      render 'edit'
    end
  end

def remove
  @group = Group.find(params[:id])
end

  def destroy
    @membership = Membership.find_by(:group_id => params[:group], :user_id => params[:user])

    @membership.destroy

    redirect_to "/groups", :notice => "Membership deleted."
  end
end
