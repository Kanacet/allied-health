class Surgeries < ActiveRecord::Migration[5.0]
  def change
    create_table :surgeries do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :youtube_url

      t.belongs_to :surgery_group, null: false
    end
  end
end
