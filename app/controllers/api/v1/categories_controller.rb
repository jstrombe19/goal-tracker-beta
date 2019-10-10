class Api::V1::CategoriesController < ApplicationController
  before_action :get_all_categories, only: [:index, :create, :update]
  before_action :find_category_by_id, only: [:show, :edit, :update, :destroy]

  def index
    render json: @categories
  end

  def show
    render json: @category
  end

  def create
    @category = Category.new
    @category.title = params["title"]
    @category.user_id = params["user_id"]
    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def edit
    render json: @category
  end

  def update
    @category = Category.update(category_params)
    if @category.save
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Category.destroy(@category)
    redirect_to :index
  end

  private

  def get_all_categories
    @categories = Category.all
  end

  def find_category_by_id
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:id, :title, :user_id)
  end

end
