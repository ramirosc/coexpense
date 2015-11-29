class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :bank_account
      t.string :email
      t.string :name

      t.timestamps

    end
  end
end
