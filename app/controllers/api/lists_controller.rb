class Api::ListsController < ApiController
  before_action :authenticated?
  def create
    list = List.new(list_params)
    if list.save
      render json: list
    else
      #todo create better error message for missing task name
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end
  def destroy
    begin
      list = List.find(params[:id])
      list.destroy
      render json: {}, status: :no_content
    rescue ActiveRecord::RecordNotFound
      render :json => {}, :status => :not_found
    end
  end

  private
    def list_params
      return if params[:user_id].blank? 
      return if params[:title].blank? 
      hash = params.require(:list).permit(:title, :private)
      hash.merge({"user_id" => params[:user_id]})
    end
end
