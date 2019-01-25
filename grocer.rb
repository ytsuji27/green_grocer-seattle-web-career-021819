require `pry`

#def consolidate_cart(cart)
#  consolidated_list = {}
#  cart.each do |hash|
#    hash.each do |item, attribute|
#      if consolidated_list.has_key?(item)
#        consolidated_list[item][:count] += 1
#      else
#        consolidated_list[item] = attribute.merge({:count => 1})
#      end
#    end
#  end
#  consolidated_list
#end


def apply_coupons(cart, coupons)
  coupons_applied_cart = cart
  coupons.each do |coupon|
    name = coupon[:item]
    if name == cart[name] && cart[name][:count] >= coupon[:num]
      coupons_applied_cart["#{name} W/ COUPON"] = {:price => coupon[:cost], :clearance => cart[name][:clearance], :count => (cart[name][:count]/coupon[:num])}
      coupons_applied_cart[name][:count] = (cart[name][:count]%coupon[:num])
    end
  end
  coupons_applied_cart
end


def apply_clearance(cart)
  # code here
end

#def checkout(cart, coupons)
  # code here
#end
