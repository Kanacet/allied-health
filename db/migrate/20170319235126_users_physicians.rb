class UsersPhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :users_physicians do |t|
      t.belongs_to :users, null: false 
      t.belongs_to :physicians, null: false 
    end
  end
end
