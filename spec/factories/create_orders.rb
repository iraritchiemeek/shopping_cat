FactoryGirl.define do
  factory :create_order, :class => 'CreateOrders' do
    total "MyString"
purchased false
  end

end
