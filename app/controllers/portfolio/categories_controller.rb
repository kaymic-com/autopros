class Portfolio::CategoriesController < ApplicationController

	before_action :set_portfolio_category, only: [:show, :edit, :update, :destroy]

	# GET /portfolio/categories
	# GET /portfolio/categories.json
	def index
		@portfolio_categories = Portfolio::Category.all
		respond_to do |format|
			format.html
			format.json { @portfolio_categories = Portfolio::Category.tokens(params[:q]) }
		end
	end

	# GET /portfolio/categories/1
	# GET /portfolio/categories/1.json
	def show
		@portfolio_items = @portfolio_category.items
	end

	# GET /portfolio/categories/new
	def new
		@portfolio_category = Portfolio::Category.new
	end

	# GET /portfolio/categories/1/edit
	def edit
	end

	# POST /portfolio/categories
	# POST /portfolio/categories.json
	def create
		@portfolio_category = Portfolio::Category.new(portfolio_category_params)

		respond_to do |format|
			if @portfolio_category.save
				format.html { redirect_to @portfolio_category, notice: 'Category was successfully created.' }
				format.json { render :show, status: :created, location: @portfolio_category }
			else
				format.html { render :new }
				format.json { render json: @portfolio_category.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /portfolio/categories/1
	# PATCH/PUT /portfolio/categories/1.json
	def update
		respond_to do |format|
			if @portfolio_category.update(portfolio_category_params)
				format.html { redirect_to @portfolio_category, notice: 'Category was successfully updated.' }
				format.json { render :show, status: :ok, location: @portfolio_category }
			else
				format.html { render :edit }
				format.json { render json: @portfolio_category.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /portfolio/categories/1
	# DELETE /portfolio/categories/1.json
	def destroy
		@portfolio_category.destroy
		respond_to do |format|
			format.html { redirect_to portfolio_categories_url, notice: 'Category was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_portfolio_category
		@portfolio_category = Portfolio::Category.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def portfolio_category_params
		params.require(:portfolio_category).permit(:name)
	end
end
