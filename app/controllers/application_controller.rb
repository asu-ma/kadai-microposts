class ApplicationController < ActionController::Base
  
  include SessionsHelper
  include Pagy::Backend

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  #Micropostの数をカウント　すべてのコントローラがcounts(user)を使用できる
  def counts(user)
    @count_microposts = user.microposts.count
  end
end