class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
    @connections = @company.connections.build
    @contacts = @connections.build_contact
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def company_params
    params.require(:company).permit(:id, :name, connections_attributes: [:id, contact_attributes: [:id, :contact_number]])
  end
end
