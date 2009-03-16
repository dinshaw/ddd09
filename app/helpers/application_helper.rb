# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  # custom error message style
  def error_messages_for(*params)
    options = params.extract_options!.symbolize_keys
    if object = options.delete(:object)
      objects = [object].flatten
    else
      objects = params.collect {|object_name| instance_variable_get("@#{object_name}") }.compact
    end
    count   = objects.inject(0) {|sum, object| sum + object.errors.count }
    unless count.zero?
      html = {:class => :errors}
      error_messages = objects.sum {|object| object.errors.full_messages.enum_for(:each_with_index).map {|msg,i| content_tag(:li, "Error: #{msg}") } }.join\
      contents = ''
      contents << content_tag(:ul, error_messages)

      content_tag(:div, contents, html)
    else
      ''
    end
  end
  
  def flash_block
    if [!flash[:message].blank?,!flash[:notice].blank?,!flash[:error].blank?].any?
      "<p id=\"flash\">#{flash[:notice]}#{flash[:error]}#{flash[:message]}</p>" 
    end
  end
end
