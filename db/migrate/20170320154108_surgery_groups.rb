class SurgeryGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :surgery_groups do |t|
      t.string :group, null: false
      t.string :image
    end
  end
end
