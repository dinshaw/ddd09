class StylesheetsController < ApplicationController
  layout false
  
  before_filter :do_colors

  @@all_files = [:layout, :content, :admin, :nav, :maintenance, :reset, :tables, :lists, :typography, :forms, :public]
  caches_page :layout, :content, :admin, :nav, :maintenance, :reset, :center_layout, :tables, :typography, :forms, :autocomplete
  
  def initialize
    @@all_files.each do |css|
      eval <<-EOS
        def #{css} 
          respond_to { |format| format.css }
        end
      EOS
    end
  end
  
  def do_colors
    @text_main = '#505050'
    @link_blue = '#8facce'
    @title = '#ceca8f'
    @med_grey = '#909090'    
    @light_grey = '#cccccc'
    @error = 'red'
  end
end
