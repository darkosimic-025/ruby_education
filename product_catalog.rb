class ProductCatalog
  def initialize
    @products = {}
  end

  def add_product(name, price)
    if price <= 0
      puts "Price must be a positive number."
      return
    end

    if @products.key?(name)
      puts "Product #{name} already exists."
    else
      @products[name] = price
    end
  end

  def delete_product(name)
    if @products.key?(name)
      @products.delete(name)
    else
      puts "Product #{name} not found."
    end
  end

  def change_price(product, price)
    if price <= 0
      puts "Price must be a positive number."
      return
    end

    if @products.key?(product)
      @products[product] = price
    else
      puts "Product #{product} not found."
    end
  end
end
