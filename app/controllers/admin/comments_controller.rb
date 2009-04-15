class Admin::CommentsController < AdminController
  # GET /admin/comments
  # GET /admin/comments.xml
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /admin/comments/1
  # GET /admin/comments/1.xml
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /admin/comments/new
  # GET /admin/comments/new.xml
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  # GET /admin/comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /admin/comments
  # POST /admin/comments.xml
  def create
    @comment = Comment.new(params[:comment])

    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.html { redirect_to(['admin', @comment]) }
        format.xml  { render :xml => @comment, :status => :created, :location => ['admin', @comment] }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/comments/1
  # PUT /admin/comments/1.xml
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        flash[:notice] = 'Comment was successfully updated.'
        format.html { redirect_to(['admin', @comment]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/comments/1
  # DELETE /admin/comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(admin_comments_url) }
      format.xml  { head :ok }
    end
  end
end
