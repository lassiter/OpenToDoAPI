class Api::ItemsController < ApiController
  before_action :authenticated?
  def create
    item = Item.new(item_params)
    if item.save
      render json: item
    else
      #todo create better error message for missing task name
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private
    def item_params
      hash = params.require(:item).permit(:task, :completed)
      hash.merge({"list_id" => params[:list_id]})
    end
end