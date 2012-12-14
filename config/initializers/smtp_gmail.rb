ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :user_name            => "asdf@gmail.com",
    :password             => "XXXXX",
    :authentication       => "plain",
    :enable_starttls_auto => true
}