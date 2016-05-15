class CreateContactEmails < ActiveRecord::Migration
  def change
    create_table :contact_emails do |t|
      t.text :message
      t.string :topic
      t.string :email
      t.string :name

      t.timestamps null: false
    end
  end
end
