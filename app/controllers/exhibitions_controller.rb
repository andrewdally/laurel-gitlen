class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.includes(:pieces).order("begins DESC")
    @exhibitions_by_year = @exhibitions.group_by{ |e| e.begins.year }
  end
  
  def show
    @exhibition = Exhibition.find(params[:id])
    @pieces = @exhibition.pieces
  end
end
