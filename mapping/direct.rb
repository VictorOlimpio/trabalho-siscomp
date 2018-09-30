class Mapping::Direct
  # Este método recebe o dado que precisa ser salvo e o tamanho da cache para em qual quadro deverá ser salvo o dado
  def self.select(block, lenght)
    block % lenght
  end
end