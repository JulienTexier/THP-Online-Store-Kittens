class JoinTableCartsItemsController < ApplicationController
	before_action :set_join_cart_item, only: [:destroy]

	def destroy
		@join_cart_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(current_user.cart), notice: 'item was successfully destroyed.' }
      format.json { head :no_content }
    end
	end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_join_cart_item
    @join_cart_item = JoinTableCartsItem.find(params[:id])
  end

end
