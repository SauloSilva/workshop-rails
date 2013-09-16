module ApplicationHelper
  def current_page(path)
    uri = URI.parse request.fullpath
    'selected' if uri.path.match(/^#{path}$/)
  end

  def error_message(record)
    return if record.errors.empty?
    record.errors.full_messages.map { |msg| content_tag(:span, msg, class: 'error') }.join.html_safe
  end
end
