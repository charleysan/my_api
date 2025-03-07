class ProductsController < ApplicationController
  # GET /products
  def index
    @products = policy_scope(Product)  # => runs ProductPolicy::Scope#resolve
    render json: @products
  end

  # GET /products/:id
  def show
    authorize @product  # => calls show? in ProductPolicy
    render json: @product
  end

  # POST /products
  def create
    @product = current_user.products.build(product_params)
    authorize @product   # => calls create? in ProductPolicy

    if @product.save
      render json: @product, status: :created
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/:id
  def update
    authorize @product   # => calls update? in ProductPolicy

    if @product.update(product_params)
      render json: @product
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /products/:id
  def destroy
    authorize @product   # => calls destroy? in ProductPolicy
    @product.destroy
    render json: { message: 'Product deleted' }, status: :ok
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:title, :content, :price, :published)
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

# def show
#   product = Product.find(params[:id]) #dynamic for showing
#   puts "==========="  #shows up in terminal
#   puts params[:id]
#   puts "==========="
#   # product = Product.find(2)  #static function
#   render json: product
# end

# def create
#   product = Product.create(name: params[:name], price: params[:price]) #dynamic
#   # product = Product.create(name: "phone", price: 50) #static
#   render json: product
# end

# def update
#   product = Product.find(params[:id])
#   product.update(
#     name: params[:name] || product.name,
#     price: params[:price] || product.price
#     )
#   render json: product
# end
# def destroy
#   product = Product.find(params[:id])
#   product.destroy
#   # products = Product.all
#   render json: products