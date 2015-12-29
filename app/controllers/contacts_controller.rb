class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def show 
    @contacts = Contact.find(params[:id])
  end 
  
  def new
    @contacts = Contact.new
  end
  
  def create
    @contacts = Contact.new(contact_params)
	
	if @contacts.save
      redirect_to @contacts
    else
      render 'new'
    end
  end
  
  def destroy
    @contacts = Contact.find(params[:id])
    @contacts.destroy
 
    redirect_to contact_path
  end
  
  private
    def contact_params
	  params.require(:contacts).permit(:name, :email, :comment)
	end
end
