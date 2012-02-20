class LandmarksController < ApplicationController
  
  def index
    @landmarks = Landmark.all
  end

  def show
    @landmark = Landmark.find_by_id(params[:id])
  end

  def destroy
    @landmark = Landmark.find_by_id(params[:id])
    @landmark.delete
    redirect_to landmarks_url
  end

  def edit
    @landmark = Landmark.find_by_id(params[:id])
  end

  def update
    @landmark = Landmark.find_by_id(params[:id])
    if @landmark.update_attributes(params[:landmark])
      redirect_to landmark_url(@landmark.id)
    else
      render :action => 'edit'
    end
  end


  def new
    @landmark = Landmark.new
  end

  def create
    @landmark = Landmark.new(params[:landmark])
    if @landmark.save
      redirect_to landmarks_url
    else
      render :action => 'new'
    end
  end


end