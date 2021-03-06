class StylesheetsController < ApplicationController
  layout false
  
  before_filter :color, :size
  skip_before_filter :get_cms_page, :nav_items, :process_nav_items, :login_required
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
  
  def color
    @bg = '#fffeec' # eeeedd
    @text = '#343232'
    @link = '#a21b05'
    @title = '#671204'
    @dark_green = '#336e00'
    @error = 'red'
    @light_grey = '#e1e1e1'
    @link_hover_bg = '#e2e5ee'
  end
  
  def size
    @width = 900
    @footer_height = 40
    @side_margin = 50
    @top_margin = 25
    @side_bar = 250
    @p_bottom = 1.7
  end
end
