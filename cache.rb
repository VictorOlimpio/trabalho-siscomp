class Cache

  attr_reader :mem, :length, :mapping, :substitution

  def initialize(mapping)
    @length=length
    @mapping=mapping
    @substitution=substitution
  end

  def read(block)
    puts ('lendo bloco ' + block.to_s)
    mapping.read(block)
  end

 def print
   puts('Estado da memória cache')
   puts(@mapping.mem)
   puts('Estado da memória auxiliar')
   puts(@mapping.aux)
   puts('Cache Hits')
   puts(@mapping.hits)
   puts('Caches Misses')
   puts(@mapping.misses)
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