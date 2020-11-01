class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)
    if @question.valid?
      @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def question_params
    params.require(:question).permit(:title, :text).merge(user_id: current_user.id)
  end
end
