class Ram
  # Essa classe pode lidar com a leitura do arquivo de entrada, leria todo o
  # arquivo para uma lista, e depois só precisaria lidar com essa lista q pode
  # ser a variável mem mesmo
  
  atea:mem

  # Como o trabalho não é sobre política de escrita na RAM, e como vamos utilizar este método apenas para carregar
  # o arquivo inicial pra RAM, acho q pode ser simples como está
  # acho q nem precisa de ter um método pra escrita
  def write(data, block=nil)
    return @mem << data if block
    @mem[block] = data
  end

  # Método para realizar a leitura da memória RAM, dado o endereço de um bloco.
  # acho q a ideia aqui é ler sequencialente a memória e ver se o bloco já está
  # presente na memória cache, se não estiver da miss e escreve na cache, soma
  # o valor de miss, se já estiver na cache apenas soma o valor de hit e segue
  # pra próxima linha da memoria ram
  
end