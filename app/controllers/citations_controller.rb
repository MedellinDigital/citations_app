class CitationsController < ApplicationController
  def index
  	@citations = Citation.all
  end



  def new
  end

  def create
    @citation = Citation.new(citation_params)
 
    @citation.save
    redirect_to @citation
  end
 
private
  def citation_params
    params.require(:citation).permit(:text)
  end
end
