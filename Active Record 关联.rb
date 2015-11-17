模型 之间的关联 ，会使操作更简单  

如果没有  关联
模型定义如下
class Customer < ActiveRecord::Base
end

class Order <ActiveRecord::Base
end


假如  我们要为一个顾客添加一个订单  就得这样

@Order = Order.create(order_date: Time.now,customer_id: @customer.id)

如果要删除一个顾客 ，那么就要确保他的所有的订单都不会被删除 

@order = Order.where(customer_id: @customer.id)
@order.each do |order|
  order.destroy
end
@customer.destroy


但是 如果告诉了Rails 这两个模型是有一定联系的  ，就可以把这些操作连在一起
class Customer < ActiveRecord::Base
  has_many :order, dependent: :destroy
end
class Order < ActiveRecord::Base
  Belongs_to :customer
end

那么之后的添加的订单就简单的很多了

@order = @customer.order.create(order_date: Time.now)


删除顾客的订单 更容易了
@customer.destroy






