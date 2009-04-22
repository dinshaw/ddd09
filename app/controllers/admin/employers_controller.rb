class Admin::EmployersController < AdminController
  # GET /admin/employers
  # GET /admin/employers.xml
  def index
    @employers = Employer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employer }
    end
  end

  # GET /admin/employers/1
  # GET /admin/employers/1.xml
  def show
    @employer = Employer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employer }
    end
  end

  # GET /admin/employers/new
  # GET /admin/employers/new.xml
  def new
    @employer = Employer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employer }
    end
  end

  # GET /admin/employers/1/edit
  def edit
    @employer = Employer.find(params[:id])
  end

  # POST /admin/employers
  # POST /admin/employers.xml
  def create
    @employer = Employer.new(params[:employer])

    respond_to do |format|
      if @employer.save
        expire_page "/bio"
        flash[:notice] = 'Employer was successfully created.'
        format.html { redirect_to(['admin', @employer]) }
        format.xml  { render :xml => @employer, :status => :created, :location => ['admin', @employer] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/employers/1
  # PUT /admin/employers/1.xml
  def update
    @employer = Employer.find(params[:id])

    respond_to do |format|
      if @employer.update_attributes(params[:employer])
        expire_page "/bio"
        flash[:notice] = 'Employer was successfully updated.'
        format.html { redirect_to(['admin', @employer]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/employers/1
  # DELETE /admin/employers/1.xml
  def destroy
    @employer = Employer.find(params[:id])
    @employer.destroy

    respond_to do |format|
      format.html { redirect_to(admin_employers_url) }
      format.xml  { head :ok }
    end
  end
end
