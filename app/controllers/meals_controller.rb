class MealsController < ApplicationController
    before_action :correct_user, only: [:edit, :update, :destroy]
    
    def home
        
    end
    def new
        @meal = Meal.new
        # @meal = Meal.new(meal_params)
    end
    def create
        # render json: params
        # @meal.params.inspect
        # @meal = Meal.new(params[:meal])
        @meal = Meal.new(meal_params)
        @meal.save
        redirect_to @meal
      end

    private
    def meal_params
        params.require(:meal).permit(:title, :type, :description, :serving_size_and_ingredients, :calories, :protein, :carbs, :fat)
    end
end
