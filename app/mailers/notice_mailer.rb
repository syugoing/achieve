class NoticeMailer < ApplicationMailer

  def sendmail_blog(blog)
    @blog = blog
    mail to: "shugo.sawada.18@gmail.com",
         subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact
    mail to: @contact.email,
         subject: '【Achieve】お問合せが完了しました'
  end
end
