class StylesheetsController < ApplicationController
  layout false
  
  before_filter :color, :size

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
    @bg = '#fffeec'
    @text = '#343232'
    @link = '#a21b05'
    @title = '#671204'
    @dark_green = '#336e00'
    @error = 'red'
    @light_grey = '#e1e1e1'
  end
  
  def size
    @width = 900
    @footer_height = 40
    @side_margin = 50
    @top_margin = 25
    @side_bar = 250
  end
end
