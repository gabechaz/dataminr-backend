class User < ApplicationRecord
    has_secure_password
    has_many :answers
    has_many :questions, through: :answers

    def unique_questions
        self.questions.uniq
    end

end
