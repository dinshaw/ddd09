class Admin::GlossaryTermsController < AdminController
  # GET /admin/glossary_terms
  # GET /admin/glossary_terms.xml
  def index
    @glossary_terms = GlossaryTerm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @glossary_term }
    end
  end

  # GET /admin/glossary_terms/1
  # GET /admin/glossary_terms/1.xml
  def show
    @glossary_term = GlossaryTerm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @glossary_term }
    end
  end

  # GET /admin/glossary_terms/new
  # GET /admin/glossary_terms/new.xml
  def new
    @glossary_term = GlossaryTerm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @glossary_term }
    end
  end

  # GET /admin/glossary_terms/1/edit
  def edit
    @glossary_term = GlossaryTerm.find(params[:id])
  end

  # POST /admin/glossary_terms
  # POST /admin/glossary_terms.xml
  def create
    params[:glossary_term][:parent_id] = 0 if params[:glossary_term][:parent_id].blank?
    @glossary_term = GlossaryTerm.new(params[:glossary_term])

    respond_to do |format|
      if @glossary_term.save
        flash[:notice] = 'GlossaryTerm was successfully created.'
        format.html { redirect_to(['admin', @glossary_term]) }
        format.xml  { render :xml => @glossary_term, :status => :created, :location => ['admin', @glossary_term] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @glossary_term.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/glossary_terms/1
  # PUT /admin/glossary_terms/1.xml
  def update
    @glossary_term = GlossaryTerm.find(params[:id])
    params[:glossary_term][:parent_id] = 0 if params[:glossary_term][:parent_id].blank?
    
    respond_to do |format|
      if @glossary_term.update_attributes(params[:glossary_term])
        flash[:notice] = 'GlossaryTerm was successfully updated.'
        format.html { redirect_to(['admin', @glossary_term]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @glossary_term.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/glossary_terms/1
  # DELETE /admin/glossary_terms/1.xml
  def destroy
    @glossary_term = GlossaryTerm.find(params[:id])
    @glossary_term.destroy

    respond_to do |format|
      format.html { redirect_to(admin_glossary_terms_url) }
      format.xml  { head :ok }
    end
  end

  def up
    @glossary_term = GlossaryTerm.find(params[:id])
    @glossary_term.move_higher
    redirect_to(admin_glossary_terms_url)
  end
  
  def down
    @glossary_term = GlossaryTerm.find(params[:id])
    @glossary_term.move_lower
    redirect_to(admin_glossary_terms_url)
  end
end
