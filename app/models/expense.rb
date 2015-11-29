class Expense < ActiveRecord::Base
belongs_to :group , :class_name => "Group", :foreign_key => "group_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"

validates :expense_name, :presence => true
validates :group_id, :presence => true
validates :user_id, :presence => true
validates :value, :presence => true

end
