class Note < ApplicationRecord
    validates :subject, :lesson_name, :date, :note_entry, presence: true
end
