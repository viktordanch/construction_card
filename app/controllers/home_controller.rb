class HomeController < ApplicationController

  def index
  end

  def send_mail
    contact_email = ContactEmail.create(mail_params)
    SiteMailer.send_contact_email(contact_email).deliver_now

    respond_to do |format|
      format.html
      format.js
    end
  end

  protected

  def mail_params
    params.permit(:name, :email, :topic, :message)
  end
end
