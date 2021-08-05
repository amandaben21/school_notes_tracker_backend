class Note < ApplicationRecord
    has_many :reminders
    
    validates :subject, :lesson_name, :date, :note_entry, presence: true
end
