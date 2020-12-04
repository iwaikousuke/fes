class NicesController < ApplicationController
  def create
    @nices = current_user.nices.create(answer_id: params[:answer_id], user_id: current_user.id)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @nice = nice.find_by(answer_id: params[:answer_id], user_id: current_user.id)
    @nice.destroy
    redirect_back(fallback_location: root_path)
  end
end
