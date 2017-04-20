class ModelMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.sign_up_confirmation.subject
  #
  def sign_up_confirmation(record)
    @record = record

    mail to: "recipient@sandboxdb0bb0199c4d48258a3026ac5e02c79b.mailgun.org", subject: "You have officially signed up! Nice one!"
  end
end
