class AboutsController < ApplicationController
  def about_us
  end
  def for_holders
  end
  def about_program
  	@abouts_program = AboutProgram.all
  	#params.require(:about_program).permit(:version, :subversion, :made, :date)
  end
end
