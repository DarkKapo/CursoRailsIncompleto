class PagesController < ApplicationController
  def index
  end

  def create
    @project = Project.create(name: params[:name],
                  state: params[:state],
                  description: params[:description],
                  start: params[:start],
                  end: params[:end])
  end

  def view
    if params[:state].present?
      @projects = Project.where('state = ?', params[:state])
    else
      @projects = Project.find_valid
    end
  end
end
