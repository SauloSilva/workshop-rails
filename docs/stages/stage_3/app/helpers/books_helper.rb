module BooksHelper
  def book_viewer(book, width, height)
    attributes = {id: 'issuu_viewer'}
    params = {allowfullscreen: true, allowScriptAccess: 'always', menu: false, wmode: 'transparent'}
    flashvar = {modo: 'mini', documentId: book.issuu_id}

    content_for :javascript  do
      javascript_tag "swfobject.embedSWF('http://static.issuu.com/webembed/viewers/style1/v2/IssuuReader.swf', 'issuu-#{book.id}-viewer', '#{width}', '#{height}', '10.0.2', '/expressinstall.swf', #{flashvar.to_json}, #{params.to_json}, #{attributes.to_json})"
    end
  end
end
