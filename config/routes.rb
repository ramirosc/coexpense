Rails.application.routes.draw do

  devise_for :users
root "groups#index"

  # Routes for the Group resource:
  # CREATE
  get "/groups/new", :controller => "groups", :action => "new"
  post "/create_group", :controller => "groups", :action => "create"

  # READ
  get "/groups", :controller => "groups", :action => "index"
  get "/groups/:id", :controller => "groups", :action => "show"

  # UPDATE
  get "/groups/:id/edit", :controller => "groups", :action => "edit"
  post "/update_group/:id", :controller => "groups", :action => "update"

  # DELETE
  get "/delete_group/:id", :controller => "groups", :action => "destroy"
  #------------------------------

  # Routes for the User resource:

   #devise_for :users

  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Membership resource:
  # CREATE
  get "/memberships/new/:id", :controller => "memberships", :action => "new"
  post "/create_membership", :controller => "memberships", :action => "create"

  # READ
  get "/memberships", :controller => "memberships", :action => "index"
  get "/memberships/:id", :controller => "memberships", :action => "show"

  # UPDATE
  get "/memberships/:id/edit", :controller => "memberships", :action => "edit"
  post "/update_membership/:id", :controller => "memberships", :action => "update"

  # DELETE
  get "/delete_membership/:group/:user", :controller => "memberships", :action => "destroy"
    #------------------------------

  # Routes for the Expense resource:
  # CREATE
  get "/expenses/new", :controller => "expenses", :action => "new"
  post "/create_expense", :controller => "expenses", :action => "create"

  # READ
  get "/expenses", :controller => "expenses", :action => "index"
  get "/expenses/:id", :controller => "expenses", :action => "show"
  get "/expenses/groups/:id", :controller => "expenses", :action => "group_expenses"

  # UPDATE
  get "/expenses/:id/edit", :controller => "expenses", :action => "edit"
  post "/update_expense/:id", :controller => "expenses", :action => "update"

  # DELETE
  get "/delete_expense/:id", :controller => "expenses", :action => "destroy"
  #------------------------------

end
