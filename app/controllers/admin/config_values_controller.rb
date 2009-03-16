class Admin::ConfigValuesController < AdminController
  # GET /admin_config_values
  # GET /admin_config_values.xml
  def index
    @admin_config_values = Admin::ConfigValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_config_values }
    end
  end

  # GET /admin_config_values/1
  # GET /admin_config_values/1.xml
  def show
    @config_value = Admin::ConfigValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @config_value }
    end
  end

  # GET /admin_config_values/new
  # GET /admin_config_values/new.xml
  def new
    @config_value = Admin::ConfigValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @config_value }
    end
  end

  # GET /admin_config_values/1/edit
  def edit
    @config_value = Admin::ConfigValue.find(params[:id])
  end

  # POST /admin_config_values
  # POST /admin_config_values.xml
  def create
    @config_value = Admin::ConfigValue.new(params[:config_value])

    respond_to do |format|
      if @config_value.save
        flash[:notice] = 'Admin::ConfigValue was successfully created.'
        format.html { redirect_to(@config_value) }
        format.xml  { render :xml => @config_value, :status => :created, :location => @config_value }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @config_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin_config_values/1
  # PUT /admin_config_values/1.xml
  def update
    @config_value = Admin::ConfigValue.find(params[:id])

    respond_to do |format|
      if @config_value.update_attributes(params[:config_value])
        flash[:notice] = 'Admin::ConfigValue was successfully updated.'
        format.html { redirect_to(@config_value) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @config_value.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin_config_values/1
  # DELETE /admin_config_values/1.xml
  def destroy
    @config_value = Admin::ConfigValue.find(params[:id])
    @config_value.destroy

    respond_to do |format|
      format.html { redirect_to(admin_config_values_url) }
      format.xml  { head :ok }
    end
  end
end
