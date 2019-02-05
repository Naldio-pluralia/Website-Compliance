class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_all

  private 

  def get_all
    @solutions = Solution.all
    @produtos_da_consultoria = ProductConsult.all
    @produtos_da_comunicao = ProductComunication.all
    @produtos_do_treinamento = ProductTrainner.all 
    @produtos_da_tecnologia = ProductTecnology.all
    @produtos_da_gestao = ProductManagement.all
  end
end
