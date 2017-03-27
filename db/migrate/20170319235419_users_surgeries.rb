class UsersSurgeries < ActiveRecord::Migration[5.0]
  def change
    create_table :users_surgeries do |t|
      t.belongs_to :users, null: false
      t.belongs_to :surgeries, null: false
    end
  end
end
