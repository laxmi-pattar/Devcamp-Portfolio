module ApplicationHelper
	def login_helper style = ''
		if current_user 
			link_to "Logout",  destroy_user_session_path, method: :delete, class: style

		else 
			(link_to "Register",  new_user_registration_path, class: style) +
			#{}"<br/>".html_safe + 
			(link_to "Login",  new_user_session_path, class: style) 
		end 
	end

	def source_helper(layout_name)
		if session[:source] 
			greeting = "Thanks for visiting me from #{session[:source]} and you are on #{layout_name} layout"
			content_tag(:p, greeting, class: "source-greeting")
		end 
	end

	def alerts
		alert = (flash[:notice] || flash[:error] || flash[:alert])
		if alert
     alert_generator alert 
		end
	end
	def alert_generator msg
  js add_gritter(msg, title: "My Portfolio", sticky: false) 
	end

#def nav_helper(style, tag_type)
#nav_links = <<NAV
#<#{tag_type}><a href="#{root_path}", class: "#{style} #{active? root_path}">Home</a></#{tag_type}>
#<#{tag_type}><a href="#{about_me_path}", class: "#{style} #{active? about_me_path}">About Me</a></#{tag_type}>
#<#{tag_type}><a href="#{contact_path}", class: "#{style} #{active? contact_path}">Contact</a></#{tag_type}>
#<#{tag_type}><a href="#{blogs_path}", class: "#{style} #{active? blogs_path}">Blog</a></#{tag_type}>
#<#{tag_type}><a href="#{portfolios_path}", class: "#{style} #{active? portfolios_path}">Portfolio</a></#{tag_type}>
#NAV
#    nav_links.html_safe
#  end

 # def active? path
 # "active" if current_page? path
 # end
end
