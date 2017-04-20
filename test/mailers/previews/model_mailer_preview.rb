# Preview all emails at http://localhost:3000/rails/mailers/model_mailer
class ModelMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/model_mailer/sign_up_confirmation
  def sign_up_confirmation
    ModelMailer.sign_up_confirmation
  end

end
