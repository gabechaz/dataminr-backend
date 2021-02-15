class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :reward, :option1, :option2,
   :option_1_count, :option_2_count, :over_30_opt_1, :male_opt_1, :male_opt_2, :female_opt_1, :female_opt_2



end

