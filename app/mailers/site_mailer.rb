class SiteMailer < ActionMailer::Base
  def send_contact_email(contact_email)
    @contact_email = contact_email
    mail(to: @contact_email.email, subject: @contact_email.topic, from: 'support@gmail.com')
  end
end