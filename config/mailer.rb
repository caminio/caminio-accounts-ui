ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
   :address   =>      'mail.tastenwerk.com',
   :port      =>      25,
   :authentication => :plain,
   :user_name      => "test",
   :password       => "",
   :enable_starttls_auto => true
  }
