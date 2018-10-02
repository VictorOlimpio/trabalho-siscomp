class Cache

  attr_reader :mem, :length, :mapping, :substitution

  def initialize(length, mapping, substitution, file_name)
    @length=length
    @mapping=mapping
    @substitution=substitution
    @mem = []
    @file_name = file_name
  end

  # este método vai pegar o dado, repassar para o tipo de mapeamento e mapeamento vai dizer onde ele deve salvar.
  def write(data)
    substitution.select # método que vai escolher qual será o bloco substituido, atentar para os modos que necessitam.
    # Resolver o problema de não executar a política de substituição se o mapeamento for direto
    # fazer chamadas dos tipos de substituição dentro dos mapeamentos resolveria não?
    mem[mapping.select(data, length)] = data
  end

  def read(block)
    # talvez chamar algum método de mapping para leitura, partindo do
    # princípio de que cada mapeamento tem uma forma diferente de enxergar
    # a cache?
    @mem = File.readlines(file_name)
    # verificar se essa lógica faz sentido pra essa implementação, acho q falta alguma coisa, 
    # acho q poderia ter um método para verificar se o bloco está presente na cache implementado dentro de um mapeamento
    if @mem.include?(block)
      hit_count
    else
      miss_count
    end
  end

  def hit_count
    @hit += 1
  end

  def hit_rate
    return (@hit / @length) * 100
  end

  def miss_count
    @miss += 1
  end

  def miss_rate
    return (@miss / length) * 100
  end
end