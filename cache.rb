class Cache

  attr_reader :mem, :length, :mapping, :substitution

  def initialize(length, mapping, substitution)
    @length=length
    @mapping=mapping
    @substitution=substitution
    @mem = []
  end

  # este método vai pegar o dado, repassar para o tipo de mapeamento e mapeamento vai dizer onde ele deve salvar.
  def write(data)
    substitution.select # método que vai escolher qual será o bloco substituido, atentar para os modos que necessitam.
    # Resolver o problema de não executar a política de substituição se o mapeamento for direto
    mem[mapping.select(data, length)] = data
  end
end