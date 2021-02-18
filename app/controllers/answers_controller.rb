class AnswersController < ApplicationController

    def post 
      answer =  Answer.create(answer_params)
      if answer.errors
        render json: answer.errors.full_messages
      else 
        render json: answer
      end
      
    end

    def destroy
      answer = Answer.find(params[:id])
      answer.destroy
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
