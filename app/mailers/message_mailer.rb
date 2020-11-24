class MessageMailer < ApplicationMailer
  def contact(message)
    mail( :to => "chirinosjor@gmail.com", :subject => "You Have a Message From Your Website")
  end
end
