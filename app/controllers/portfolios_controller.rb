class PortfoliosController < ApplicationController
  before_action :set_portfolio_item, only: %i[edit show update destroy]
  layout 'portfolio'
  def index
    @portfolio_items = Portfolio.all
  end

  def react
    @react_portfolio_items = Portfolio.react
  end

  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end

  def show; end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html {
          redirect_to portfolios_path,
                      notice: 'Portfolio was successfully created.'
        }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { 
          redirect_to portfolios_path,
                      notice: 'Portfolio was successfully updated.'
        }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    # destroy the record
    @portfolio_item.destroy

    # Redirect
    respond_to do |format|
      format.html do
        redirect_to portfolios_url,
                    notice: 'Portfolio successfully deleted.'
      end
    end
  end

  private # can only be used within this class

  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body,
      technologies_attributes: [:name]
    )
  end

  def set_portfolio_item
    # perform the lookup
    @portfolio_item = Portfolio.find(params[:id])
  end
end
