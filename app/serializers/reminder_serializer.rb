class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :content

  belongs_to :note
end
