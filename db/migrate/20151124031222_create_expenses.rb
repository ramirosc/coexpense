class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :paid_form
      t.string :expense_type
      t.date :held_on
      t.string :category
      t.float :value
      t.string :expense_name
      t.integer :group_id
      t.integer :user_id

      t.timestamps

    end
  end
end
