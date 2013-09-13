module DeviseHelper
   def devise_error_messages!
      return if resource.errors.empty?
      resource.errors.full_messages.map { |msg| content_tag(:span, msg, class: 'error') }.join.html_safe
   end
end