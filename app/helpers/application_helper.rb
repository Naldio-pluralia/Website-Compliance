module ApplicationHelper
  def setting
    setting ||= {}
    setting[:name] = 'Compliance 360º'
    setting[:logo] = image_tag('360_compliance.png', {class: 'logo'})
    setting
  end   
  
  def active(action)
    action_name == action ? 'active' : ''
  end
  

  def set_provincias

    provincias = [{provincia:"Bengo", cidade: "Caxito"},
                  {provincia:"Benguela",	cidade:"Benguela"},
                  {provincia:"Bié",	cidade:"Kuito"},
                  {provincia:"Cabinda", cidade:"Cabinda"},
                  {provincia: "Cuando-Cubango",	cidade: 'Menongue'},
                  {provincia: "Cunene",	cidade: "Ondjiva"},
                  {provincia: "Huambo",	cidade: "Huambo"},
                  {provincia: "Huíla",	cidade: "Lubango"},
                  {provincia: "Kwanza Norte",	cidade: "N'dalatando"},
                  {provincia: "Kwanza Sul",	cidade: "Sumbe"},
                  {provincia: "Luanda",	cidade: "Luanda"},
                  {provincia: "Lunda-Norte",	cidade: "Dundo"},
                  {provincia: "Lunda-Sul",	cidade: "Saurimo"},
                  {provincia: "Malanje", cidade: "Malanje"},
                  {provincia: "Moxico",	cidade: "Luena"},
                  {provincia: "Namibe",	cidade: "Moçâmedes"},
                  {provincia: "Uíge",	cidade: "Uíge"},
                  {provincia: "Zaire",	cidade: "M'Banza Kongo"}]

    provincias
  end
  
  # def set_cidade(provincias)
  #   if provincias[provincia] 
  # end


  def link_description(produto)
    "#{produto.description[0..200]} ..."
  end
  
  def solution_path(solution)

    path = '/solucoes/'
    
    if solution.name_path == 'mentoring'
      return path += 'mentoring'
    elsif solution.name_path == 'suply'
      return path += 'supply-chain-integrity'
    elsif solution.name_path == 'consultoria_especializada'
      return path += 'consultoria-especializada'
    elsif solution.name_path == 'solucoes_comunicacao'
      return path += 'comunicacao'
    elsif solution.name_path == 'solucoes_treinamentos'
      return path += 'treinamentos'
    elsif solution.name_path == 'solucoes_gestao'
      return path += 'gestao'
    elsif solution.name_path == 'tecnologia_compliance'
      return path += 'tecnologia-compliance'      
    elsif solution.name_path == 'canal_denuncias'
      return path += 'canal-denuncias'
    else
      "/compliance/#{solution.name_path}"
    end

  end
  
end
