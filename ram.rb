class Ram
  
  attr_reader :mem

  # Como o trabalho não é sobre política de escrita na RAM, e como vamos utilizar este método apenas para carregar
  # o arquivo inicial pra RAM, acho q pode ser simples como está
  def write(data, block=nil)
    return @mem << data if block
    @mem[block] = data
  end

  # Método para realizar a leitura da memória RAM, dado o endereço de um bloco.
  def read(block)
    @mem[block]
  end
end