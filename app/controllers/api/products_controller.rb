class Api::ProductsController < ApplicationController
  def all_action
    @products
    render all.json.jbuilder
end
