module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    # Add the user id to the cookie.  (Session is a built in ruby thing for cookies here)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_user
    # If the current user is set, return that.  Otherwise, return the one found
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  # Returns true if the given user is the current user.
  def current_user?(user)
    user == current_user
  end 
  
  # Function to store user for future sessions
  def remember(user)
    user.remember # Calls model
    cookies.permanent.signed[:user_id] = user.id # Save off encryped user ID
    cookies.permanent[:remember_token] = user.remember_token # Save off random thing for validation
  end

  # Function to store user for future sessions
  def forget(user)
    user.forget # Calls model function
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end  
  
  def log_out
    forget(current_user)
    session.delete(:user_id) # removes the session from the cookie
    @current_user = nil # sets the current user to empty
  end
  
  
  # Redirects to stored location (or to the default).
  def redirect_back_or(default)
    redirect_to(session[:forwarding_url] || default)
    session.delete(:forwarding_url)
  end

  # Stores the URL trying to be accessed.
  def store_location
    session[:forwarding_url] = request.url if request.get?
  end  
  
end
