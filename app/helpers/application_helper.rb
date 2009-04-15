require 'enumerator'
module ApplicationHelper
  # custom error message style
  # def error_messages_for(*params)
  #   options = params.extract_options!.symbolize_keys
  #   if object = options.delete(:object)
  #     objects = [object].flatten
  #   else
  #     objects = params.collect {|object_name| instance_variable_get("@#{object_name}") }.compact
  #   end
  #   count   = objects.inject(0) {|sum, object| sum + object.errors.count }
  #   unless count.zero?
  #     html = {:class => :errors}
  #     error_messages = objects.sum {|object| object.errors.full_messages.enum_for(:each_with_index).map {|msg,i| content_tag(:li, "Error: #{msg}") } }.join\
  #     contents = ''
  #     contents << content_tag(:ul, error_messages)
  # 
  #     content_tag(:div, contents, html)
  #   else
  #     ''
  #   end
  # end

  def page_title
    [h(SITE_NAME),"|",@cms_page.title].join(" ")
  end
  
  def flash_block
    if [!flash[:message].blank?,!flash[:notice].blank?,!flash[:error].blank?].any?
      "<p id=\"flash\">#{flash[:notice]}#{flash[:error]}#{flash[:message]}</p>" 
    end
  end
  
  def main_nav(nav_items=@nav_items)
    nav_items.enum_with_index.map{ |ni,i|
			content_tag :li, link_to(ni[0],ni[1]), :class => ni[2]
		}.join("\n")
  end
  
  def is(value)
    value ? "Yes" : "No"
  end
end


