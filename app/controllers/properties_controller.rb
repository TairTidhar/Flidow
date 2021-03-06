class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!

  def new
	@property = Property.new
  end

	def create
		@property = Property.new(property_params)
    @property.user = current_user
  if @property.save
      redirect_to new_room_path
    else
      render :new
    end
	end

  def index
    @properties = Property.all
  end

  private

  def property_params
    params.require(:property).permit(:address, :square_meter, :furnished)
  end
end

