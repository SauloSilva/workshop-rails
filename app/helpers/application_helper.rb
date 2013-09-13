module ApplicationHelper
  def current_page(path)
    uri = URI.parse request.fullpath
    'selected' if uri.path.match(/^#{path}$/)
  end
end
