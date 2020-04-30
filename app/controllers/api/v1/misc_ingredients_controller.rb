class Api::V1::MiscIngredientsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_misc_ingredient, only: [ :show, :update, :destroy ]

  def index
    if params[:name]
      @misc_ingredients = policy_scope(MiscIngredient.where('name ILIKE ?', "%#{params[:name]}%"))
    else
      @misc_ingredients = policy_scope(MiscIngredient)
    end
  end

  def show
  end

  def update
    if @misc_ingredient.update(misc_ingredient_params)
      render :show
    else
      render_error
    end
  end

  def create
    @misc_ingredient = MiscIngredient.new(misc_ingredient_params)
    @misc_ingredient.user = current_user
    authorize @misc_ingredient
    if @misc_ingredient.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @misc_ingredient.destroy
    head :no_content
  end

  private

  def set_misc_ingredient
    @misc_ingredient = MiscIngredient.friendly.find(params[:id])
    authorize @misc_ingredient  # For Pundit
  end

  def misc_ingredient_params
    params.require(:misc_ingredient).permit(:name)
  end

  def render_error
    render json: { errors: @misc_ingredient.errors.full_messages },
                 status: :unprocessable_entity
  end
end
