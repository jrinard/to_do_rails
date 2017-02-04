class ListsController < ApplicationController
  def index
    @lists = List.all   # shows all lists
    render :index
  end

  def show
    @list = List.find(params[:id]) # finds id of a single list
    render :show
  end

end
