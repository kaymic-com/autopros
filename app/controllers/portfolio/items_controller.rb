class Portfolio::ItemsController < ApplicationController
  before_action :set_portfolio_item, only: [:show, :edit, :update, :destroy]

  # GET /portfolio/items
  # GET /portfolio/items.json
  def index
    @portfolio_items = Portfolio::Item.all
  end

  # GET /portfolio/items/1
  # GET /portfolio/items/1.json
  def show
	  render :show, layout: false if request.xhr?
  end

  # GET /portfolio/items/new
  def new
    @portfolio_item = Portfolio::Item.new
  end

  # GET /portfolio/items/1/edit
  def edit
  end

  # POST /portfolio/items
  # POST /portfolio/items.json
  def create
    @portfolio_item = Portfolio::Item.new(portfolio_item_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @portfolio_item }
      else
        format.html { render :new }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /portfolio/items/1
  # PATCH/PUT /portfolio/items/1.json
  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_item_params)
        format.html { redirect_to @portfolio_item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @portfolio_item }
      else
        format.html { render :edit }
        format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio/items/1
  # DELETE /portfolio/items/1.json
  def destroy
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolio_items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio_item
      @portfolio_item = Portfolio::Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def portfolio_item_params
      params.require(:portfolio_item).permit(:service_id, :year, :make, :model, :description)
    end
end
