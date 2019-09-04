# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
		  :user_name => ENV['MAILJET_API'],
		  :password => ENV['MAILJET_SECRET'],
		  :domain => ENV['BEST_DOMAIN'],
		  :address => ENV['MAILJET_SMTP'],
		  :port => 587,
		  :authentication => :plain,
		  :enable_starttls_auto => true
		}
