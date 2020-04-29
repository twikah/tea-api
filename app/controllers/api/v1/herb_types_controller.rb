class Api::V1::HerbTypesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_herb_type, only: [ :show, :update, :destroy ]

  def index
    if params[:name]
      @herb_types = policy_scope(HerbType.where('name ILIKE ?', "%#{params[:name]}%"))
    else
      @herb_types = policy_scope(HerbType)
    end
  end

  def show
  end

  def update
    if @herb_type.update(herb_type_params)
      render :show
    else
      render_error
    end
  end

  def create
    @herb_type = HerbType.new(herb_type_params)
    @herb_type.user = current_user
    authorize @herb_type
    if @herb_type.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @herb_type.destroy
    head :no_content
  end

  private

  def set_herb_type
    @herb_type = HerbType.friendly.find(params[:id])
    authorize @herb_type  # For Pundit
  end

  def herb_type_params
    params.require(:herb_type).permit(:name, :herb_id)
  end

  def render_error
    render json: { errors: @herb_type.errors.full_messages },
                 status: :unprocessable_entity
  end
end

