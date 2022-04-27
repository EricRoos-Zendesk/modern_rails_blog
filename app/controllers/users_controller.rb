class UsersController < ApplicationController
  include ActionView::RecordIdentifier

  def show
    @user = User.find(params[:id])
    authorize @user

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: [
          turbo_stream.update(request.headers['Turbo-Frame'], @user.email)
        ]
      }
    end
  end
end