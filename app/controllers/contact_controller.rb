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
end
