class QuestionsController < ApplicationController

    def index
        questions = Question.all

        render json: questions
    end

    def new
      question = Question.new
      render json: question
    end
  
    def create
      question = Question.create(question_params)
      render json: question
    end
  
    private
      def question_params
        params.permit(:creator_id, :question, :reward, :option1, :option2)
      end

end
