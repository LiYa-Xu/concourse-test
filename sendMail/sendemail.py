import sendgrid
from sendgrid.helpers.mail import *
from string import Template
SUBJECT_TEMPLATE = Template("[$subject] Owner revalidation of Softlayer VM/baremetal CBN")
BODY_TEMPLATE = Template("""
##1. Why you are receiving this note  
  You are the owner of a Softlayer VM/baremetal which is in low usage during the past month.

##2. What you need to do  
  To reduce IBM cost, please review the continued business need for the Softlayer VM/baremetal below.
  * If it?s no longer in use, please cancel it from Softlayer ASAP.
  * If it needs to be kept for some time, please provide the Business Justification and follow the guide(https://github.ibm.com/BlueMix-Fabric/cloud-resource-keeper/wiki/How-to-apply-to-whitelist) to add it to the whitelist which will be reviewed by the management team periodically.

  $advice

##3. Softlayer VM/baremetal  
  $instance_id

##4. Support  
  Any questions please contact cuixuex@cn.ibm.com. Thank you for your cooperation.

""")
sg = sendgrid.SendGridAPIClient("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")
notify = dict(subject="1st Reminder", advice="Please take proper actions as your early convenience.")

mail_address = "xuliya@cn.ibm.com"
#if mail_address is "":
    # How to deal with this instance
#    return False
subject = SUBJECT_TEMPLATE.safe_substitute(notify)
content = Content('text/plain', BODY_TEMPLATE.safe_substitute(notify))
#send_notification_action(sg, mail_address, subject, content)

from_email = Email('cloud_resource_keeper@xuliya.com')
print "Notifying to {0}".format(mail_address)
to_email = Email(mail_address)
#to_email = Email('shawzida@gmail.com')
mail = Mail(from_email, subject, to_email, content)
response = sg.client.mail.send.post(request_body=mail.get())
if response.status_code >= 200 and response.status_code < 300:
    print "Sent to {0} successfully".format(mail_address)

