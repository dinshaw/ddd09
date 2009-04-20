class Admin::DesignersController < AdminController
  # GET /admin/designers
  # GET /admin/designers.xml
  def index
    @designers = Designer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @designer }
    end
  end

  # GET /admin/designers/1
  # GET /admin/designers/1.xml
  def show
    @designer = Designer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @designer }
    end
  end

  # GET /admin/designers/new
  # GET /admin/designers/new.xml
  def new
    @designer = Designer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @designer }
    end
  end

  # GET /admin/designers/1/edit
  def edit
    @designer = Designer.find(params[:id])
  end

  # POST /admin/designers
  # POST /admin/designers.xml
  def create
    @designer = Designer.new(params[:designer])

    respond_to do |format|
      if @designer.save
        expire_page "/designers"
        flash[:notice] = 'Designer was successfully created.'
        format.html { redirect_to(['admin', @designer]) }
        format.xml  { render :xml => @designer, :status => :created, :location => ['admin', @designer] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @designer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/designers/1
  # PUT /admin/designers/1.xml
  def update
    @designer = Designer.find(params[:id])

    respond_to do |format|
      if @designer.update_attributes(params[:designer])
        expire_page "/designers"
        flash[:notice] = 'Designer was successfully updated.'
        format.html { redirect_to(['admin', @designer]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @designer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/designers/1
  # DELETE /admin/designers/1.xml
  def destroy
    @designer = Designer.find(params[:id])
    @designer.destroy

    respond_to do |format|
      format.html { redirect_to(admin_designers_url) }
      format.xml  { head :ok }
    end
  end
end
