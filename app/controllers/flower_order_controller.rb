class FlowerOrderController < ApplicationController
  def index
    puts "Welcome to your local Flower Shop"
    order = FlowerOrder.all
    render json: order

  end
  def create
    order = FlowerOrder.create(name: params[:name], phonenumber: params[:phonenumber], price: params[:price]) #dynamic
    # Flower = Flower.create(name: "phone", price: 50) #static
    render json: order
  end

  def update
    order = FlowerOrder.find(params[:id])
    order.update(
      name: params[:name] || FlowerOrder.name,
      phonenumber: params[:phonenumber] || FlowerOrder.phonenumber
      price: params[:price] || FlowerOrder.price
      )
    render json: order
  end

  def destroy
    order = FlowerOrder.find(params[:id])
    order.destroy
    render json: orders
  end



end
