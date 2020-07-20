class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |category_attributes|
      if !category_attributes[:name].empty?
        category = Category.find_or_create_by( category_attributes)
        if !self.categories.include?(category)
          self.post_categories.build(category: category)
        end
      end
    end
  end

  def unique_users
    self.comments.map { |comment| comment.user }.uniq
  end
end