class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.name
    @questions = user.questions.order('created_at DESC')
    @answers = user.answers.order('created_at DESC')
  end
end
