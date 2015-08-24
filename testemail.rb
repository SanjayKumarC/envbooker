require 'net/smtp'

message = <<MESSAGE_END
From: John Griffiths  <john.griffiths@aberdeen-asset.com>
To: John Griffiths  <john.griffiths@aberdeen-asset.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

Net::SMTP.start('emeamail.aberdeen.aberdeen-asset.com') do |smtp|
  smtp.send_message message, 'john.griffiths@aberdeen-asset.com','john.griffiths@aberdeen-asset.com'
end
