class ProductsController < ApplicationController
  def index
    puts "Hello World"
    products = Product.all
    render json: products

  end

  def show
    product = Product.find(params[:id]) #dynamic for showing
    puts "==========="  #shows up in terminal
    puts params[:id]
    puts "==========="
    # product = Product.find(2)  #static function
    render json: product
  end

  def create
    product = Product.create(name: params[:name], price: params[:price]) #dynamic
    # product = Product.create(name: "phone", price: 50) #static
    render json: product
  end

  def update
    product = Product.find(params[:id])
    product.update(
      name: params[:name] || product.name,
      price: params[:price] || product.price
      )
    render json: product
  end
  def destroy
    product = Product.find(params[:id])
    product.destroy
    # products = Product.all
    render json: products
  end

end


#def index
#   products = Product.all
#   render json: products
# end

# def create
#   product = Product.create(name: "Phone", price: 50)
#   render json: product
# end

# Routing:
# Maps HTTP requests to controller actions.

# Controllers:
# Contains actions (methods) that handles requests