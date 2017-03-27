class PhysiciansSurgeries < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians_surgeries do |t|
      t.belongs_to :surgries, null: false
      t.belongs_to :physicians, null: false
    end
  end
end
