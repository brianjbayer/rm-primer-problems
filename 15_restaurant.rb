# frozen_string_literal: true

# Implementation for RubyMonk Primer Problem 15 Orders and costs
# Problem Statement:
# A restaurant has incoming orders for which you need to compute the costs based on the menu.
# You might get multiple orders at times.
# Examples:
# If the order is {:rice => 1, :noodles => 1}, and the menu is {:rice => 3, :noodles => 2},
# then the cost is 5.
# If the orders are {:rice => 1, :noodles => 1} and {:rice => 2, :noodles => 2} and the menu
# is {:rice => 3, :noodles => 2}, then the cost is 15.
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def order_cost(order)
    order.keys.reduce(0) { |order_cost, item| order_cost + @menu[item] * order[item] }
  end

  def cost(*orders)
    # your code here
    orders.map { |order| order_cost(order) }.reduce(0, &:+)
  end
end
