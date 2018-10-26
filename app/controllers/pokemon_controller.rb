class PokemonController < ApplicationController

  def capture
    @pokemon = Pokemon.find(params[:id])
    @pokemon.trainer = current_trainer
    redirect_to '/'
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @trainer = @pokemon.trainer
    @pokemon.update(health: @pokemon.health - 10)
    if @pokemon.health <= 0
			@pokemon.destroy
    end
    redirect_to trainer_path(@trainer)
  def new
  		@pokemon = Pokemon.new
  end

  def createnew
    @pokemon = Pokemon.new(pokemon_params)
    @pokemon.trainer = current_trainer
    @pokemon.health = 100
    @pokemon.level = 1
    if @pokemon.save
      redirect_to trainer_path(current_trainer)
    else
    	flash[:error] = @pokemon.errors.full_messages.to_sentence
    	redirect_to pokemons_new_path
    end
  end

  def pokemon_params
		params.require(:pokemon).permit(:name, :ndex)
	end

end
