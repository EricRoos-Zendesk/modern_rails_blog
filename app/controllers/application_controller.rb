class ApplicationController < ActionController::Base
  include Pundit::Authorization
  default_form_builder CustomFormBuilder
  before_action :authenticate_user!
  after_action :verify_authorized, unless: -> { devise_controller? }

end
