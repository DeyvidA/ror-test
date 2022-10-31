class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :stock, :status, :brand_id, :category_id

  def brand_id
    brand = self.object.brand
    {
      id: brand.id,
      name: brand.name
    }
  end

  def category_id
    category = self.object.category
    {
      id: category.id,
      name: category.name
    }
  end
end
