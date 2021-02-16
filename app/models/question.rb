class Question < ApplicationRecord
    has_many :answers
    has_many :users, through: :answers

    def creator
        User.all.find(self.creator_id).name
    end


    def option_1_count
        answer_count = self.answers.length
       
        x =  self.answers.select do |answer|
                answer.response == 'option1'
            end
            # byebug
        if answer_count > 0 
        int = x.length.to_f / answer_count.to_f * 100 
        int.round
        else
            0
        end
        # byebug
    end

    def option_2_count
       x =  self.answers.select do |answer|
            answer.response == 'option2'
        end
        x.length
        byebug
    end


    def over_30_opt_1
      answers = self.answers.select { |answer| answer.response == 'option1'}
      over_30 = answers.select do |answer| 
        answer.user.age <= 30
      end
      over_30.length
    end

    def over_30_opt_2
        answers = self.answers.select { |answer| answer.response == 'option2'}
        over_30 = answers.select do |answer| 
          answer.user.age < 30
        end
      end

    def male_opt_1
        answers = self.answers.select { |answer| answer.response == 'option1'}
        male = answers.select {|answer| answer.user.gender_identity == 'male'}
        if answers > 0 
            male.length / answers * 100
            else
                0
        end
    end

    def male_opt_2
        answers = self.answers.select { |answer| answer.response == 'option2'}
        male = answers.select {|answer| answer.user.gender_identity == 'male'}
        male.length
    end

    def female_opt_1
        answers = self.answers.select { |answer| answer.response == 'option1'}
        female = answers.select {|answer| answer.user.gender_identity == 'female'}
        if answers > 0 
            female.length / answers * 100
            else
                0
        end
    end

    def female_opt_2
        answers = self.answers.select { |answer| answer.response == 'option2'}
        female = answers.select {|answer| answer.user.gender_identity == 'female'}
        female.length
    end




end


