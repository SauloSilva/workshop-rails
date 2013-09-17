module ApplicationHelper
  def error_messages(record)
    return if record.errors.empty?
    record.errors.full_messages.map{ |message| content_tag(:span, message, class: 'error') }.join.html_safe
  end
end
