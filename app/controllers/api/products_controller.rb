class Api::ProductsController < ApplicationController
  def index
    @products = Product.all

    search_term = params[:search]
    if search_term
      @products = @products.where("name iLIKE ?", "%#{search_term}%")
    end

    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    if 
      sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif 
      sort_attribute
      @products = @products.order(sort_attribute)      
    end

    render 'index.json.jbuilder'
  end


  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @product = Product.new(name: params[:name],
                           price: params[:price],
                           image_id: params[:image_id],
                           in_stock: params[:in_stock],
                           description: params[:description],
                           supplier_id: params[:supplier_id]
                           )
    if @product.save
      render 'show.json.jbuilder'
    else  
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
      @product = Product.find(params[:id])

      @product.name = params[:name] || @product.name,
      @product.price = params[:price] || @product.price,
      @product.image_id = params[:image_url] || @product.image_id,
      @product.in_stock = params[:in_stock] || @product.in_stock,
      @product.description = params[:description] || @product.description,
      @product.supplier_id = params[:supplier_id] || @product.supplier_id
       
      if @product.save
       render 'show.json.jbuilder'
      else
        render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
      end

  end

  def destroy
      @product = Product.find(params[:id])
      @product.destroy
      render json: {message: "Product successfully destroyed"}
  end

end
