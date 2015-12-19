class ContactsController < ApplicationController
  def new
  end
  
  def create
    @contact = Contact.new (params[:contact])
	
	@contact.save
	redirect_to @article
  end
end
