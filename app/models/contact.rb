class Contact < MailForm::Base # :nodoc:
  attribute :name,      validate:  true
  attribute :email,     validate:  /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   validate:  true
  attribute :nickname,  captcha:   true

  def headers
    {
      subject: 'Contact Form',
      to:      'nomi@nomivos.com',
      from:    %("#{name}" <#{email}>)
    }
  end
end
