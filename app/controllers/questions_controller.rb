class QuestionsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  def index
    @questions = Question.includes(:user).order('created_at DESC')
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.valid?
      @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @answer = Answer.new
    @answers = @question.answers.includes(:user)
    @likes = current_user.likes.find_by(question_id: @question.id)
    @like = Like.new
  end

  def edit
    unless current_user.id == @question.user.id
      redirect_to root_path
    end
  end

  def update
    if @question.update(question_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @question.user.id
      @question.destroy
      redirect_to root_path
    end
  end

  private

  def question_params
    params.require(:question).permit(:title, :text).merge(user_id: current_user.id)
  end

  def set_tweet
    @question = Question.find(params[:id])
  end

end
