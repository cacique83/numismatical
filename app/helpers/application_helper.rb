module ApplicationHelper

def user_nav
		if user_signed_in?
			'signed_in'

		else
			'signed_out'
		end
	end



def activeable_li_link_to(text, path)
	active = if request.path == path then 'active' else '' end

	content_tag :li, class: active do
		link_to text, path

	end
end


	def alert_class(name)
		case name
		when :notice then 'alert-info'
		when :success then 'alert-success'
		when :error then 'alert-error'
		else 'alert-block'
		end
	end	


end
