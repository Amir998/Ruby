class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
    orders.inject(0) do |total_cost, order|
      total_cost + order.keys.inject(0) { |cost, key| cost + @menu[key] * order[key] }
    end
  end
end

my_meal = Restaurant.new(rice: 3, noodles: 2)

print my_meal.cost({rice: 1, noodles: 1}, {rice: 2, noodles: 2})
