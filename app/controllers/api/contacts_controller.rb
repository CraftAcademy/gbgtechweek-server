class Api::ContactsController < ApplicationController
  before_action :set_default_response_format

  def index
    @contacts = Contact.all
    render json: @contacts
  end

  protected

  def set_default_response_format
    request.format = :json
  end
end
