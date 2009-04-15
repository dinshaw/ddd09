class Admin::ConfigValuesController < AdminController
  # GET /admin/config_values
  # GET /admin/config_values.xml
  def index
    @config_values = ConfigValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @config_value }
    end
  end

  # GET /admin/config_values/1
  # GET /admin/config_values/1.xml
  def show
    @config_value = ConfigValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @config_value }
    end
  end

  # GET /admin/config_values/new
  # GET /admin/config_values/new.xml
  def new
    @config_value = ConfigValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @config_value }
    end
  end

  # GET /admin/config_values/1/edit
  def edit
    @config_value = ConfigValue.find(params[:id])
  end

  # POST /admin/config_values
  # POST /admin/config_values.xml
  def create
    @config_value = ConfigValue.new(params[:config_value])

    respond_to do |format|
      if @config_value.save
        flash[:notice] = 'ConfigValue was successfully created.'
        format.html { redirect_to(['admin', @config_value]) }
        format.xml  { render :xml => @config_value, :status => :created, :location => ['admin', @config_value] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @config_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/config_values/1
  # PUT /admin/config_values/1.xml
  def update
    @config_value = ConfigValue.find(params[:id])

    respond_to do |format|
      if @config_value.update_attributes(params[:config_value])
        flash[:notice] = 'ConfigValue was successfully updated.'
        format.html { redirect_to(['admin', @config_value]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @config_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/config_values/1
  # DELETE /admin/config_values/1.xml
  def destroy
    @config_value = ConfigValue.find(params[:id])
    @config_value.destroy

    respond_to do |format|
      format.html { redirect_to(admin_config_values_url) }
      format.xml  { head :ok }
    end
  end
end
