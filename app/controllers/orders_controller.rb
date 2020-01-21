class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  #before_action :set_order_for_Product, only: [:new]


  # GET /orders
  # GET /orders.json
  def index

    @orders = Order.all

  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    #byebug
      @order = Order.new
      @order.lineitems.new

  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    byebug
    #here @product=find.productfind(:product);
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])

    end

    # def set_order_for_Product
    #   @product = Product.find(params[:product_id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      # params.require(:order).permit(:order_number, :order_date, :order_total, :order_type,:product_id,:user_id, lineitems_attributes: [:quantity,:product_id])
       params.require(:order).permit(:order_number, :order_date, :order_total, :order_type,:product_id,:user_id, lineitems_attributes: Lineitem.attribute_names.map(&:to_sym).push(:_destroy))
      # params.require(:order).permit(:order_number, :orderdate, :total, :order_type,:product_id,:user_id, lineitems_attributes: Lineitem.attribute_names.map(&:to_sym).push(:_destroy))
    end


end
