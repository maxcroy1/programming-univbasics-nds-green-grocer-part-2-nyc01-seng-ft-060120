require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons_applied = cart
    coupons_applied.each do |cart_item|
      coupons.each do |coupon|
        if coupon[:item] == cart_item[:item]
          discounted_item = cart_item.clone 
          discounted_item[:item] += " W/COUPON"
          discounted_item[:price] = (coupon[:cost] / coupon[:num])
          if (cart_item[:count] % coupon[:num]) == 0 
            cart_item[:count] = 0
          else
            discounted_item[:count] -= (cart_item[:count] % coupon[:num])
            cart_item[:count] = (cart_item[:count] % coupon[:num])
          end
          coupons_applied << discounted_item
        end
      end
    end
  coupons_applied
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
