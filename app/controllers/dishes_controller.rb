class DishesController < ApplicationController
  before_action :set_dish, only: [:show, :edit, :update, :destroy]
  before_action :set_course, only: [:new]

  # GET /dishes
  def index
    @dishes = Dish.all
    @courses = Course.all
  end

  # GET /dishes/1
  def show
    redirect_to edit_dish_path(:id => @dish)
  end

  # GET /dishes/new
  def new
    @dish = Dish.new
    @dish.course = Course.find(params[:format])
  end

  # GET /dishes/1/edit
  def edit
  end

  # POST /dishes
  def create
    @dish = Dish.new(dish_params)
    if @dish.save
      redirect_to root_path, notice: 'Dish was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /dishes/1
  def update
    if @dish.update(dish_params)
      redirect_to root_path, notice: 'Dish was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dishes/1
  def destroy
    @dish.destroy
    redirect_to dishes_url, notice: 'Dish was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dish
      @dish = Dish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dish_params
      params.require(:dish).permit(:course_id, :name, :price, :description)
    end

    def set_course

    end
end
