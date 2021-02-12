class AnswersController < ApplicationController

    def post 
      answer =  Answer.create(answer_params)
      
      render json: answer
    end


    def index
        answers = Answer.all
        render json: answers
    end


    private
    def answer_params
        params.require(:answer).permit(:user_id, :question_id, :response)
    end

end
