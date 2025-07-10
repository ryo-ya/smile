class ContactMailer < ApplicationMailer
    def send_mail(contact)
        @contact = contact
        mail(
            from: ENV['GMAIL_USERNAME'],
            to: 'sax.rm.rc@gmail.com',
            subject: '【お問い合わせ】Webサイトより'
        )
    end
end
