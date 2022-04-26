class ApplicationController < ActionController::Base
  default_form_builder CustomFormBuilder
  before_action :authenticate_user!
end
