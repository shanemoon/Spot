class SpotFindersController < ApplicationController
  # GET /spot_finders
  # GET /spot_finders.xml
  def index
    @spot_finders = SpotFinder.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spot_finders }
    end
  end

  # GET /spot_finders/1
  # GET /spot_finders/1.xml
  def show
    @spot_finder = SpotFinder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spot_finder }
    end
  end

  # GET /spot_finders/new
  # GET /spot_finders/new.xml
  def new
    @spot_finder = SpotFinder.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spot_finder }
    end
  end

  # GET /spot_finders/1/edit
  def edit
    @spot_finder = SpotFinder.find(params[:id])
  end

  # POST /spot_finders
  # POST /spot_finders.xml
  def create
    @spot_finder = SpotFinder.new(params[:spot_finder])
    name = @spot_finder.name
    longitude = @spot_finder.longitude
    latitude = @spot_finder.latitude

    respond_to do |format|
      if @spot_finder.save
        format.html { redirect_to(@spot_finder, :notice => 'Spot finder successfully found a result.') }
        format.xml  { render :xml => @spot_finder, :status => :created, :location => @spot_finder }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spot_finder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spot_finders/1
  # PUT /spot_finders/1.xml
  def update
    @spot_finder = SpotFinder.find(params[:id])

    respond_to do |format|
      if @spot_finder.update_attributes(params[:spot_finder])
        format.html { redirect_to(@spot_finder, :notice => 'Spot finder was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spot_finder.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spot_finders/1
  # DELETE /spot_finders/1.xml
  def destroy
    @spot_finder = SpotFinder.find(params[:id])
    @spot_finder.destroy

    respond_to do |format|
      format.html { redirect_to(spot_finders_url) }
      format.xml  { head :ok }
    end
  end
end
