class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:error] = "sdkjdksbfhkdb"
      flash[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to contact_path
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end
