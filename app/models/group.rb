class Group < ActiveRecord::Base
has_many :memberships , :class_name => "Membership", :foreign_key => "group_id"
has_many :expenses , :class_name => "Expense", :foreign_key => "group_id"

validates :group_name, :presence => true
validates :user_id, :presence => true


end
