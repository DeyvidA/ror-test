class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :sku, :stock, :status

  def brand
    brand = self.object.brand
    {
      id: brand.id,
      name: brand.name
    }
  end

  def category
    category = self.object.category
    {
      id: category.id,
      name: category.name
    }
  end
end
