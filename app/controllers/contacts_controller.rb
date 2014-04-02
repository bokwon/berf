class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def show

  end

  # trigger the send_message 
  def sms
    @contact = Contact.find(params[:id])
    @contact.send_message("Happy Birthday")

  end

  def create
    @user = User.find(params[:user_id])
    @contact = Contact.new(contact_params)
    @contact.user_id = @user.id
    if @contact.save
      redirect_to @user
    else
      render :new
    end
  end

  private
    def contact_params
      params.require(:contact).permit(:nick_name, :first_name, :last_name, :phone_number, :birthday, :email)
    end

    # def set_user
    # end
end
