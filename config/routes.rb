Rails.application.routes.draw do
  namespace :backoffice do
    resources :authors
  end
  namespace :backoffice do
    resources :articles
  end
  namespace :backoffice do
    resources :compliances
  end

  get '/admin', to: 'backoffice/compliance#bashboard'

  namespace :backoffice do
    get 'compliance/bashboard'
  end

  get 'content/ebooks'

  get 'content/articles'

  get 'content/videos'

  get 'content/depositions'

  get 'product_management/kit_gestao_de_riscos'

  get 'product_management/kit_perfis_profissionais'

  get 'product_management/kit_documentacao'

  get 'product_management/sistema_de_pesquisas'

  get 'product_management/gestao_do_desempenho'

  get 'product_management/gestao_dos_embaixadores'

  get 'product_tecnology/compliance_assessment_online'

  get 'product_tecnology/business_partners'

  get 'product_tecnology/anti_retaliation_tool'

  get 'product_tecnology/integrity_plus'

  get 'product_trainner/compliance_ead'

  get 'product_trainner/kit_gestor'

  get 'product_trainner/treinamentos_presenciais'

  get 'product_trainner/train_the_trainer'

  get 'product_trainner/plano_de_treinamentos'

  get 'product_comunication/compliance_alerta'

  get 'product_comunication/o_que_voce_faria'

  get 'product_comunication/compliance_em_quadrinhos'

  get 'product_comunication/campanhas_padrao'

  get 'product_comunication/reunioes_gerenciais'

  get 'product_comunication/comunicacao_externa'

  get 'product_comunication/due_diligence'

  get 'product_comunication/plano_de_comunicacao'

  get 'product_consult/avaliacao_risco_compliance'

  get 'product_consult/apoio_a_alta_direcao'

  get 'product_consult/documentacao_de_compliance'

  get 'product_consult/processos_e_controles'

  get 'product_consult/comunicacao'

  get 'product_consult/treinamentos_em_compliance'

  get 'product_consult/efectividade_dos_processos_de_compliance'

  get 'product_consult/investigacao_e_reporte'

  get 'product_consult/due_diligence'

  get 'product_consult/compliance_assessment'

  get 'product_consult/compliance_na_area_de_suprimentos'

  get 'product_consult/apoio_ao_comite_etica'

  get 'product_consult/coaching_ao_compliance_officer'

  get 'solucoes/mentoring', to: 'compliance#mentoring'

  get 'solucoes/supply-chain-integrity', to: 'compliance#suply'

  get 'solucoes/consultoria-especializada', to: 'compliance#consultoria_especializada'

  get 'solucoes/comunicacao', to: 'compliance#solucoes_comunicacao'

  get 'solucoes/treinamentos', to: 'compliance#solucoes_treinamentos'

  get 'solucoes/gestao', to: 'compliance#solucoes_gestao'

  get 'solucoes/tecnologia-compliance', to: 'compliance#tecnologia_compliance'

  get 'solucoes/canal-denuncias', to: 'compliance#canal_denuncias'

  root to: 'home#index'

  get 'home/index'

  get 'sobre', to: 'home#about'

  get 'home/contact'

  Solution.all.each do |solution|
    get "compliance/#{solution.name_path}"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
