class NoteSerializer < ActiveModel::Serializer
  attributes :id, :subject, :lesson_name, :date, :note_entry

  has_many :reminders
end
