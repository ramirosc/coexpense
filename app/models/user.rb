class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :memberships , :class_name => "Membership", :foreign_key => "user_id"
has_many :expenses , :class_name => "Expense", :foreign_key => "user_id"
has_many :groups , :through => :memberships,:source => :group



validates :name, :presence => true, :uniqueness => true
validates :email, :presence => true, :uniqueness => true

end
