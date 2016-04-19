class Blog::ItemsController < ApplicationController

	before_action :authenticate_admin!, except: [:index, :show]

	before_action :set_blog_item, only: [:show, :edit, :update, :destroy]

	# GET /blog/items
	# GET /blog/items.json
	def index
		@blog_items = Blog::Item.all
	end

	# GET /blog/items/1
	# GET /blog/items/1.json
	def show
	end

	# GET /blog/items/new
	def new
		@blog_item = Blog::Item.new
	end

	# GET /blog/items/1/edit
	def edit
	end

	# POST /blog/items
	# POST /blog/items.json
	def create
		@blog_item = Blog::Item.new(blog_item_params)

		respond_to do |format|
			if @blog_item.save
				format.html { redirect_to @blog_item, notice: 'Item was successfully created.' }
				format.json { render :show, status: :created, location: @blog_item }
			else
				format.html { render :new }
				format.json { render json: @blog_item.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /blog/items/1
	# PATCH/PUT /blog/items/1.json
	def update
		respond_to do |format|
			if @blog_item.update(blog_item_params)
				format.html { redirect_to @blog_item, notice: 'Item was successfully updated.' }
				format.json { render :show, status: :ok, location: @blog_item }
			else
				format.html { render :edit }
				format.json { render json: @blog_item.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /blog/items/1
	# DELETE /blog/items/1.json
	def destroy
		@blog_item.destroy
		respond_to do |format|
			format.html { redirect_to blog_items_url, notice: 'Item was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_blog_item
		@blog_item = Blog::Item.friendly.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def blog_item_params
		params.require(:blog_item).permit(:title, :slug, :publish_date, :content)
	end
end
