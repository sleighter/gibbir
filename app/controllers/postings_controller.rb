class PostingsController < ApplicationController
  # GET /postings
  # GET /postings.xml
  def index
    @postings = Posting.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @postings }
    end
  end

  # GET /postings/1
  # GET /postings/1.xml
  def show
    @posting = Posting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @posting }
    end
  end

  # GET /postings/new
  # GET /postings/new.xml
  def new
    @posting = Posting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @posting }
    end
  end

  # GET /postings/1/edit
  def edit
    @posting = Posting.find(params[:id])
  end

  # POST /postings
  # POST /postings.xml
  def create
    @posting = Posting.new(params[:posting])

    respond_to do |format|
      if @posting.save
        format.html { redirect_to(@posting, :notice => 'Posting was successfully created.') }
        format.xml  { render :xml => @posting, :status => :created, :location => @posting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @posting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /postings/1
  # PUT /postings/1.xml
  def update
    @posting = Posting.find(params[:id])

    respond_to do |format|
      if @posting.update_attributes(params[:posting])
        format.html { redirect_to(@posting, :notice => 'Posting was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @posting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /postings/1
  # DELETE /postings/1.xml
  def destroy
    @posting = Posting.find(params[:id])
    @posting.destroy

    respond_to do |format|
      format.html { redirect_to(postings_url) }
      format.xml  { head :ok }
    end
  end
end
