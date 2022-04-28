class UsersController < ApplicationController
  include ActionView::RecordIdentifier

  def show
    @user = User.find(params[:id])
    authorize @user

    respond_to do |format|
      format.turbo_stream
    end
  end
end
