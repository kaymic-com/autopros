class NavItemsController < ApplicationController

	include Sortable

	before_action :authenticate_admin!

	before_action :set_nav_item, only: [:show, :edit, :update, :destroy]

	# GET /nav_items
	# GET /nav_items.json
	def index
		@nav_items = NavItem.all
	end

	# GET /nav_items/1
	# GET /nav_items/1.json
	# def show
	# end

	# GET /nav_items/new
	def new
		@nav_item = NavItem.new
	end

	# GET /nav_items/1/edit
	def edit
	end

	# POST /nav_items
	# POST /nav_items.json
	def create
		@nav_item = NavItem.new(nav_item_params)

		respond_to do |format|
			if @nav_item.save
				format.html { redirect_to nav_items_path, notice: 'Nav item was successfully created.' }
				format.json { render :show, status: :created, location: @nav_item }
			else
				format.html { render :new }
				format.json { render json: @nav_item.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /nav_items/1
	# PATCH/PUT /nav_items/1.json
	def update
		respond_to do |format|
			if @nav_item.update(nav_item_params)
				format.html { redirect_to nav_items_path, notice: 'Nav item was successfully updated.' }
				format.json { render :show, status: :ok, location: @nav_item }
			else
				format.html { render :edit }
				format.json { render json: @nav_item.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /nav_items/1
	# DELETE /nav_items/1.json
	def destroy
		@nav_item.destroy
		respond_to do |format|
			format.html { redirect_to nav_items_url, notice: 'Nav item was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_nav_item
		@nav_item = NavItem.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def nav_item_params
		params.require(:nav_item).permit(:href, :text, :page_id, :position, :blank_target)
	end
end
