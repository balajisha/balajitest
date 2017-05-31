class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.Signup.subject
  #
  def Signup(user)
    @obj = user

    mail to: user.email, subject: "confirmation "
  end
end
