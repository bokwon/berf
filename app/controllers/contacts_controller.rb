class ContactsController < ApplicationController
#we should probably create the before method for the  we use find parameters
  before_filter :authenticate_user!
  before_filter :find_user 

  def new
    @contact = Contact.new
  end

  def update
    @user = User.find(params[:user_id])
    @contact = Contact.find(params[:id])

    @contact.update(contact_params)

    redirect_to @user
  end

  def update_active_flag
    change_string_to_boolean
    @user = User.find(params[:user_id])
    @contact = Contact.find(params[:contact_id])
    @contact.update(contact_params)
    render json: {result: true}, status: 200
  end

  def delete
    @contact = Contact.find(params[:contact_id]).destroy

    render json: {result: true}, status: 200
  end

  def show
  end

  # trigger the send_message 
  def sms
    @contact = Contact.find(params[:id])
    @contact.send_message("Happy Birthday #{@contact.first_name}! It is now #{Time.now}")
    
    flash[:success] = "Birthday Message is sent!"
    redirect_to @user
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
      params.require(:contact).permit(:nick_name, :first_name, :last_name, :phone_number, :birthday, :email, :is_active)
    end

    def find_user
      @user = User.find(params[:user_id])
    end

    def change_string_to_boolean
      if params[:contact][:is_active] == "false"
        params[:contact][:is_active] = false
      else
        params[:contact][:is_active] = true
      end
    end

end
