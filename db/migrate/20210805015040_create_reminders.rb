class CreateReminders < ActiveRecord::Migration[6.1]
  def change
    create_table :reminders do |t|
      t.string :note_id
      t.string :content

      t.timestamps
    end
  end
end
