class RefreshRequestNotifier < ApplicationMailer

  def send_notification_to_admin(refresh_request)
    @refresh_request = refresh_request
    @admins = User.where(admin:true)
    emails = @admins.collect{ |x| x.email }.join(";")

    mail(to: emails, subject: "Refresh request for #{@refresh_request.env.name}")

  end
end
