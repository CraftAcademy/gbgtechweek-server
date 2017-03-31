class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(sanitized_params)

    if @contact.save
      render 'thanks'
    else
      flash[:error] = 'Your information could not be saved.'
      render 'new'
    end
  end

  private

  def sanitized_params
    params.require(:contact).permit(:name,
                                    :email,
                                    :location,
                                    :twitter,
                                    :company,
                                    :role,
                                    :info)
  end
end
