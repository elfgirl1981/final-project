class ContactsController < ApplicationController
  def new
  end
  
  def create
    @contact = Contact.new (params[:contact])
	
	@contact.save
	redirect_to @contact
	
	@contact = Contact.new(params.require(:contact).permit(:name, :email, :comment))
  end
end
