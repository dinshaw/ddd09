require 'enumerator'
module ApplicationHelper

  def page_title
    [h(SITE_NAME),"|",@cms_page.title].join(" ")
  end
  
  # output meta description or resuce with nil if no page is set
  def meta_description
    @cms_page.meta_description.blank? ? "Web application development in New York" : @cms_page.meta_description
  end
 
  # output meta keywords tag or resuce with nil if no page is set
  def meta_keywords
    @cms_page.meta_keyword.blank? ? "New York (NY) Web Development, Custom ecommerce development, Web Application Development" : @cms_page.meta_keyword
  end
  
  # write the tag for both meta_description and meta_keywords
  def meta(name, content)
    %(<meta name="#{name}" content="#{content}" />)
  end

  def flash_block
    if [!flash[:message].blank?,!flash[:notice].blank?,!flash[:error].blank?].any?
      "<p id=\"flash\">#{flash[:notice]}#{flash[:error]}#{flash[:message]}</p>" 
    end
  end

  def main_nav(nav_items=@nav_items)
    nav_items.enum_with_index.map do |ni,i|
      options = {:class => ni[2]} if !ni[2].blank?
      content_tag :li, link_to(ni[0],ni[1]), options
    end.join("\n")
  end

  def is(value)
    value ? "Yes" : "No"
  end


  def dddt(text)
    if text.blank?
      text
    else
      terms = GlossaryTerm.all.map{ |gt| gt.term }
      match = Array(terms).map{ |p| Regexp.escape(p) }.join('|')
      textilize(text).gsub(/(#{match})(?!(?:[^<]*?)?(?:["'])[^<>]*>)/i) do |m| 
      link_to m, glossary_terms_path( :anchor => "glossary_term_#{GlossaryTerm.find_by_term(m).id}" ), :class => :info
    end
  end
end

end


