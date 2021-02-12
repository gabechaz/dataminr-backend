class AnswersController < ApplicationController

    def post 
      answer =  Answer.create(answer_params)
      render json: answer
    end


    def answer_params
        params.require(:answer).permit(:user_id, :question_id, :response)
    end

end
