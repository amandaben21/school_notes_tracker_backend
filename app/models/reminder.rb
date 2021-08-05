class Reminder < ApplicationRecord
    belongs_to :note
    
    validates :content, presence: true
end

