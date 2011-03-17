class PaintingsController < ApplicationController
  def new
    @painting = Painting.new(:spot_id => params[:spot_id])
  end

  def create
    @painting = Painting.new(params[:painting])
    if @painting.save
      flash[:notice] = "Successfully created painting."
      redirect_to @painting.spot
    else
      render :action => 'new'
    end
  end

  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update_attributes(params[:painting])
      flash[:notice] = "Successfully updated painting."
      redirect_to @painting.spot
    else
      render :action => 'edit'
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    flash[:notice] = "Successfully destroyed painting."
    redirect_to @painting.spot
  end
end