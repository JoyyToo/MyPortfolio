# view helpers are used to store additional conditional logic
# where majority is ruby code
module ApplicationHelper
  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      # concatenate for both items to be displayed after else
      (link_to 'Register', new_user_registration_path) + '<br>'.html_safe +
      (link_to 'Login', new_user_session_path)
    end
  end
end

# html_safe sanitizes so it is displayed as html instead of a string
# fine to use it when not dealing with user input content
