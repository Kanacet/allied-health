class DeviseCreatePhysicians < ActiveRecord::Migration[5.0]
  def change
    create_table :physicians do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :occupation_title, null: false
      t.string :office_address, null: false
      t.string :office_city, null: false
      t.string :office_state, null: false
      t.string :office_zip, null: false
      t.string :practice_address
      t.string :practice_city
      t.string :practice_state
      t.string :practice_zip
      t.string :physicians_assistant
      t.string :phone, null: false
      t.string :cellphone

      t.timestamps null: false
    end

    add_index :physicians, :email,                unique: true
    add_index :physicians, :reset_password_token, unique: true
    # add_index :physicians, :confirmation_token,   unique: true
    # add_index :physicians, :unlock_token,         unique: true
  end
end
