ActionMailer::Base.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    domain: 'heroku.com',
    authentication: "plain",
    user_name: ENV['MANDRILL_USERNAME'],
    password: ENV['MANDRILL_APIKEY']
}
ActionMailer::Base.delivery_method = :smtp