class SeriesController < ApplicationController

  def index
    @series = Series.all
  end

  def new
    @series = Series.new
  end

  def create
    @series = Series.new(series_attributes)
    @series.save
    redirect_to @series
  end

  def show
    @series = find_series
  end

  def edit
    @series = find_series
  end

  def update
    @series = find_series
    @series.update_attributes(series_attributes)
    redirect_to series_path(params[:id])
    flash[:notice] = "Series is updated successfully"
  end

  def destroy
    Series.destroy(params[:id])
    redirect_to series_index_path
    flash[:notice] = "Successfuly deleted the Series"
  end

  private

  def find_series
    Series.find(params[:id])
  end

  def series_attributes
    params[:series].permit(:series_name,:series_location,:series_desc,:series_date_from,:series_date_to,:series_result,:series_type)
  end

end
