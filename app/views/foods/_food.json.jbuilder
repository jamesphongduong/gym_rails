json.extract! food, :id, :name, :type_of_dish, :calories, :protein, :carbs, :fat, :description, :serving_size_and_ingredients, :user_id, :created_at, :updated_at
json.url food_url(food, format: :json)
