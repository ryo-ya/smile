class ContactController < ApplicationController
  def new
    permitted = params.permit(:name, :email, :content)
    if permitted.present?
      @contact = Contact.new(permitted)
    else
      @contact = Contact.new
    end
  end
  
  def confirm
    # 確認画面（POSTで送信された内容を表示）
    @contact = Contact.new(
      name: params[:name],
      email: params[:email],
      content: params[:content]
    )
  end

  def create
    @contact = Contact.new(
      name: params[:name],
      email: params[:email],
      content: params[:content]
    )

    # メール送信（エラーがあったらログに出す）
    begin
      ContactMailer.send_mail(@contact).deliver_now
    rescue => e
      logger.error "メール送信エラー: #{e.message}"
    end

    # 完了画面へリダイレクト
    redirect_to "/contact/complete"
  end

  def complete
  end
  def top
    
  end
end
