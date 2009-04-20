class Admin::CmsPagesController < AdminController
  # GET /admin/cms_pages
  # GET /admin/cms_pages.xml
  def index
    @cms_pages = CmsPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cms_page }
    end
  end

  # GET /admin/cms_pages/1
  # GET /admin/cms_pages/1.xml
  def show
    @cms_page = CmsPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cms_page }
    end
  end

  # GET /admin/cms_pages/new
  # GET /admin/cms_pages/new.xml
  def new
    @cms_page = CmsPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cms_page }
    end
  end

  # GET /admin/cms_pages/1/edit
  def edit
    @cms_page = CmsPage.find(params[:id])
  end

  # POST /admin/cms_pages
  # POST /admin/cms_pages.xml
  def create
    params[:cms_page][:parent_id] = 0 if params[:cms_page][:parent_id].blank?
    @cms_page = CmsPage.new(params[:cms_page])

    respond_to do |format|
      if @cms_page.save
        expire_page "/#{@cms_page.path}"        
        flash[:notice] = 'CmsPage was successfully created.'
        format.html { redirect_to(['admin', @cms_page]) }
        format.xml  { render :xml => @cms_page, :status => :created, :location => ['admin', @cms_page] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cms_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/cms_pages/1
  # PUT /admin/cms_pages/1.xml
  def update
    @cms_page = CmsPage.find(params[:id])
    params[:cms_page][:parent_id] = 0 if params[:cms_page][:parent_id].blank?
    respond_to do |format|
      if @cms_page.update_attributes(params[:cms_page])
        expire_page "/#{@cms_page.path}"
        flash[:notice] = 'CMS Page was successfully updated.'
        format.html { redirect_to(['admin', @cms_page]) }
        format.xml  { head :ok }
      else

        format.html { render :action => "edit" }
        format.xml  { render :xml => @cms_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cms_pages/1
  # DELETE /admin/cms_pages/1.xml
  def destroy
    @cms_page = CmsPage.find(params[:id])
    @cms_page.destroy

    respond_to do |format|
      format.html { redirect_to(admin_cms_pages_url) }
      format.xml  { head :ok }
    end
  end
end
