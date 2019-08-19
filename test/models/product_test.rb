require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "the truth" do
    product = Product.new(title: 'some title')
	  assert_not product.save
  end
end
