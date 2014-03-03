class AuditorsController < ApplicationController
  respond_to :json

  def index
    respond_with Auditor.all
  end

  def show
    respond_with Auditor.find(params[:id])
  end

  def create
    respond_with Auditor.create(params[:entry])
  end

  def update
    respond_with Auditor.update(params[:id], params[:entry])
  end

  def destroy
    respond_with Auditor.destroy(params[:id])
  end
end