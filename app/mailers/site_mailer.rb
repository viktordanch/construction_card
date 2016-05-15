class SiteMailer < ActionMailer::Base
  def send_contact_email(contact_email)
    @contact_email = contact_email
    mail(to: ENV['EMAIL'], subject: @contact_email.topic, from: @contact_email.email)
  end
end