class QuestionsController < ApplicationController
  before_action :authenticate, only: [:create]

    def index
        questions = Question.all

        render json: questions
    end

    def create
      question = Question.new(question_params)
      question.creator_id = @current_user.id
      question.save
      render json: question
    end
  
    def show
        question = Question.find(params[:id])

        render json: question
    end

    private
    def question_params
      params.permit(:creator_id, :question, :reward, :option1, :option2)
    end
end
