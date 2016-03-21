class RecipesController < ApplicationController

	http_basic_authenticate_with name: 'andres', password: 'cprtest456', only: :destroy

	def create
		@event = Event.find(params[:event_id])
		@recipe = @event.recipes.create(recipe_params)
		redirect_to event_path(@event)
	end

	def destroy
		@event = Event.find(params[:event_id])
		@recipe = @event.recipes.find(params[:id])
		@recipe.destroy
		redirect_to event_path(@event)
	end

	private
		def recipe_params
			params.require(:recipe).permit(:name, :instruction, :course)
	end
end
