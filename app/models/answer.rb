class Answer < ApplicationRecord
    # validates :user_id, uniqueness: true
    belongs_to :question
    belongs_to :user
end
