class Api::V1::HerbsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_herb, only: [ :show, :update, :destroy ]

  def index
    @herbs = policy_scope(Herb)
  end

  def show
  end

  def update
    if @herb.update(herb_params)
      render :show
    else
      render_error
    end
  end

  def create
    @herb = Herb.new(herb_params)
    @herb.user = current_user
    authorize @herb
    if @herb.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @herb.destroy
    head :no_content
  end

  private

  def set_herb
    @herb = Herb.find(params[:id])
    authorize @herb  # For Pundit
  end

  def herb_params
    params.require(:herb).permit(:name)
  end

  def render_error
    render json: { errors: @herb.errors.full_messages },
                 status: :unprocessable_entity
  end
end
