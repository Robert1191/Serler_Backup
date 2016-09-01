class SessionsController < BaseController
  def new
  end


# Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

# Returns the current logged-in user (if any).
  def current_user
      @current_user ||= User.find_by(id: session[:user_id])
  end

# Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to root_path
    end
  end



  def destroy
  end
end
