class Membership < ActiveRecord::Base
belongs_to :group , :class_name => "Group", :foreign_key => "group_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"

validates :group_id, :presence => true
validates :user_id, :presence => true
validates :user_id,  :uniqueness => {:scope => :group_id}

end
