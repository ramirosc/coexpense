class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new
    @group.group_name = params[:group_name]
    @group.user_id = params[:user_id]
    @group.save

    @membership = Membership.new
    @membership.group_id = Group.find_by(:group_name => @group.group_name).id
    @membership.user_id = params[:user_id]
    @membership.save

   redirect_to "/groups", :notice => "Group created successfully."
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    @group.group_name = params[:group_name]
    @group.user_id = params[:user_id]

    if @group.save
      redirect_to "/groups", :notice => "Group updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find(params[:id])

    @group.destroy

    redirect_to "/groups", :notice => "Group deleted."
  end
end
