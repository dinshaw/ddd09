class GlossaryTermsController < ApplicationController
  caches_page :index
  
  def index
    @glossary_terms = GlossaryTerm.all
  end

end
