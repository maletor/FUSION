Typus.setup do |config|

  # Application name.
  config.admin_title = "fusion"
  config.admin_sub_title = "by PROD4ever"

  # Configure the e-mail address which will be shown in Admin::Mailer.
  # When this option is define Typus will allow admin users to recover
  # lost passwords.
  config.mailer_sender = "typus@prodfusion.com"

  # Define file attachment settings.
  # config.file_preview = :typus_preview
  # config.file_thumbnail = :typus_thumbnail

  # Authentication: :none, :http_basic
  # config.authentication = :session

  # Define username and password for http authentication
  # config.username = "admin"
  # config.password = "columbia"

  # Define available languages on the admin interface.
  # config.available_locales = [:en]

end
