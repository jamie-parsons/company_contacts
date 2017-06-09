class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :new, :create]

  def new
    @company = Company.new
  end

  def index
    @companies = Company.all
  end

  def show
  end

  def create
   @company = Company.new(company_params)
    if @company.save
      redirect_to @company, notice: 'Company Created!' 
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @company.save
      redirect_to @company
    else
      render :edit
    end
  end

  def destroy
    flash[:notice] = 'Company Deleted'
    redirect_to companies_path
  end

  private

  def company_params
    params.require(:company).permit(:name, :location, :employee)
  end

  def set_company
     @company = Company.find(params[:id])
  end
end
