module SessionsHelper

  # 渡されたuserでログインする
  def log_in(user)
    session[:id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
