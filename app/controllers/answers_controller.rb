class AnswersController < ApplicationController

    def post 

        poss_answer = Answer.find_by(question_id: params[:question_id], user_id: params[:user_id])
    if poss_answer
        answer = Answer.update(answer_params)
        render json: answer
    else
      answer =  Answer.create(answer_params)
      render json: answer
    end
      
    end

    def show
        answer = Answer.find(params[:id])
        render json: answer
    end

    def index
        answers = Answer.all
        render json: answers
    end


    private
    def answer_params
        params.permit(:user_id, :question_id, :response, :answer)
    end

end
