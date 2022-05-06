class ApplicationController < ActionController::Base
  include Pundit::Authorization
  default_form_builder CustomFormBuilder
  before_action :log_account_name
  before_action :authenticate_user!
  after_action :verify_authorized, unless: -> { devise_controller? }

  protected

  def log_account_name
    Rails.logger.info("[Account Name] - #{request.subdomain}")
  end

end
