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


def apply_coupons
  
  cart = {"AVOCADO" => {:price => 3.0, :clearance => true, :count => 2}}
  coupons = {:item => "AVOCADO", :num => 2, :cost => 5.0}
  
  coupons_applied = {}
  coupons.each do |coupon|
    name = coupon[:item]
    binding.pry
    if name == cart[name] && cart[name][:count] >= coupon[:num]
      coupons_applied["#{name} W/ COUPON"] = {:price => coupon[:cost], :clearance => cart[name][:clearance], :count => (cart[name][:count]/coupon[:num])}
      coupons_applied[name] = cart[name]
      coupons_applied[name][:count] = (cart[name][:count]%coupon[:num])
    else
      coupons_applied[name] = cart[name]
    end
  end
end
apply_coupons

#def apply_clearance(cart)
  # code here
#end

#def checkout(cart, coupons)
  # code here
#end
