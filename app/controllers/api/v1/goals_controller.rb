class Api::V1::GoalsController < ApplicationController
  before_action :get_all_goals, only: [:index, :create, :update]
  before_action :find_goal_by_id, only: [:show, :edit, :update, :destroy]

  def index
    render json: @goals
  end

  def show
    render json: @goal
  end

  def create
    @goal = Goal.new
    @goal.title = params["title"]
    @goal.description = params["description"]
    @goal.due_date = params["due_date"]
    @goal.due_time = params["due_time"]
    @goal.notes = params["notes"]
    @goal.theme_color = params["theme_color"]
    @goal.icon = params["icon"]
    @goal.category_id = params["category_id"]
    if @goal.save
      render json: @goal, status: :created, location: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def edit
    render json: @goal
  end

  def update
    @goal = Goal.update(goal_params)
    if @goal.save
      render json: @goal
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Goal.destroy(@goal)
    redirect_to :index
  end

  private

  def get_all_goals
    @goals = Goal.all
  end

  def find_goal_by_id
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(
      :id,
      :title,
      :description,
      :due_date,
      :due_time,
      :notes,
      :theme_color,
      :icon,
      :created_at,
      :updated_at,
      :category_id
    )
  end

end
