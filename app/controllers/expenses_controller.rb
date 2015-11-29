class ExpensesController < ApplicationController
  def index
    @expenses = Expense.all
    cookies[:redirect_path]="/expenses"
  end

  def show
    @expense = Expense.find(params[:id])
  end

 def group_expenses
    @group = Group.find(params[:id])
    cookies[:redirect_path]="/expenses/groups/#{@group.id}"
  end


  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new
    @expense.paid_form = params[:paid_form]
    @expense.expense_type = params[:expense_type]
    @expense.held_on = params[:held_on]
    @expense.category = params[:category]
    @expense.value = params[:value]
    @expense.expense_name = params[:expense_name]
    @expense.group_id = params[:group_id]
    @expense.user_id = params[:user_id]

    if @expense.save
      redirect_to "/expenses", :notice => "Expense created successfully."
    else
      render 'new'
    end
  end

  def edit
    @expense = Expense.find(params[:id])
  end

  def update
    @expense = Expense.find(params[:id])

    @expense.paid_form = params[:paid_form]
    @expense.expense_type = params[:expense_type]
    @expense.held_on = params[:held_on]
    @expense.category = params[:category]
    @expense.value = params[:value]
    @expense.expense_name = params[:expense_name]
    @expense.group_id = params[:group_id]
    @expense.user_id = params[:user_id]

  if @expense.save
      redirect_to cookies[:redirect_path], :notice => "Expense updated successfully."
    else
      render 'new'
    end
  end

  def destroy
    @expense = Expense.find(params[:id])

    @expense.destroy

    redirect_to "/expenses", :notice => "Expense deleted."
  end
end
