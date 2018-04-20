class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'

  def new
  	mail to: recipients_options

  end
  layout 'mailer'
end
