# view helpers are used to store additional conditional logic
# where majority is ruby code
module ApplicationHelper
  def login_helper style
    if current_user.is_a?(GuestUser)
      # concatenate for both items to be displayed
      (link_to 'Register', new_user_registration_path, class: style) + ' '.html_safe +
        (link_to 'Login', new_user_session_path, class: style)
    else
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thank you for visiting from me #{session[:source]}
      and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: 'source-greeting')
    end
  end

  def copyright_generator
    @copyright = JoyyViewTool::Renderer.copyright 'Joy Too',
                                                  'All rights reserved'
  end
end

# html_safe sanitizes so it is displayed as html instead of a string
# fine to use it when not dealing with user input content
