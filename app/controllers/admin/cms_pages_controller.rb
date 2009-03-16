class Admin::CmsPagesController < AdminController
  # GET /admin_cms_pages
  # GET /admin_cms_pages.xml
  def index
    @cms_pages = Admin::CmsPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cms_pages }
    end
  end

  # GET /admin_cms_pages/1
  # GET /admin_cms_pages/1.xml
  def show
    @cms_page = Admin::CmsPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cms_page }
    end
  end

  # GET /admin_cms_pages/new
  # GET /admin_cms_pages/new.xml
  def new
    @cms_page = Admin::CmsPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cms_page }
    end
  end

  # GET /admin_cms_pages/1/edit
  def edit
    @cms_page = Admin::CmsPage.find(params[:id])
  end

  # POST /admin_cms_pages
  # POST /admin_cms_pages.xml
  def create
    @cms_page = Admin::CmsPage.new(params[:cms_page])

    respond_to do |format|
      if @cms_page.save
        flash[:notice] = 'CMS Page was successfully created.'
        format.html { redirect_to(@cms_page) }
        format.xml  { render :xml => @cms_page, :status => :created, :location => @cms_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cms_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin_cms_pages/1
  # PUT /admin_cms_pages/1.xml
  def update
    @cms_page = Admin::CmsPage.find(params[:id])

    respond_to do |format|
      if @cms_page.update_attributes(params[:cms_page])
        flash[:notice] = 'Admin::CmsPage was successfully updated.'
        format.html { redirect_to(@cms_page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cms_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_cms_pages/1
  # DELETE /admin_cms_pages/1.xml
  def destroy
    @cms_page = Admin::CmsPage.find(params[:id])
    @cms_page.destroy

    respond_to do |format|
      format.html { redirect_to(admin_cms_pages_url) }
      format.xml  { head :ok }
    end
  end
end
