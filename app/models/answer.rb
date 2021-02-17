class Answer < ApplicationRecord
    # validates :user_id, uniqueness: true
    validates_uniqueness_of :user_id, :scope => :question_id    
    belongs_to :question
    belongs_to :user
end
