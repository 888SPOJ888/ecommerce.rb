require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test 'creates a subcategory' do
    category = Category.create(name: "Clothes")
    Subcategory = Category.create(name: "Women_clothes", parent: category)
    assert !category.subcategories.nil?
   end
end
