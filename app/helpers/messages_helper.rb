module MessagesHelper
  def recipients_options
    s = ''
    if current_user.email == "admin@example.com"
    	users = User.all
    	users.each do |user|
	    	if user.email != current_user.email
	      		s << "<option value='#{user.id}'>#{user.email}</option>"
	      	end
	    end
    else
    	s << "<option value='5' selected>admin@example.com</option>"
    end
    s.html_safe
  end
end