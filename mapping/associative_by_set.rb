module Mapping
  class AssociativeBySet
    attr_reader :hits, :misses, :mem, :subst, :lenght, :set_lenght, :aux

    def initialize (subst, lenght, set_lenght)
      @subst = subst
      @hits = 0
      @misses = 0
      @lenght = lenght
      @mem = []
      @aux = []
      (0..lenght).each {|x| @mem[x] = -1; @aux[x] = -1}
      @set_lenght = set_lenght
      puts "Qtd linhas cache #{lenght/set_lenght}"
    end

    def read(block)
      line = decode_line(block, @lenght, @set_lenght)
      # Início daquela linha no vetor, ou seja, primeiro indice de quadro da linha
      init = line*set_lenght
      # Fim daquela linha no vetor, ou seja, último índice de quadro na linha
      offset = (line*set_lenght)+set_lenght-1
      puts "Linha escolhida =$ #{line} , Bloco escolhido => #{block}, inicio da linha #{init} , final da linha #{offset}"
      puts("Espaço do vetor a ser buscado ")
      b= @mem[init..offset]
      puts b
      puts "Tem o bloco lá?" + (@mem[init..offset]).include?(block).to_s
      return @hits += 1 if (@mem[init..offset]).include?(block)
      @misses += 1
      subst= @subst.select(@aux[init..offset])
      puts "Posição escolhida para ser guardado: linha #{line} conjunto #{subst}"
      @mem[line*set_lenght+ subst]=block
      @subst.update(@aux,subst,init,offset)
      puts "Axiliar após a atualização"
      puts @aux
    end


    # método responsável por decodificar a linha em que se encontra o bloco
    # Dado um número de bloco e o tamanho de conjuntos por linha ele retorna a linha que se encontra aquele bloco
    # "Mapeamento Direto"
    def decode_line(block, cache_lenght, set_lenght)
      return (block % ((cache_lenght/set_lenght)))
    end


  end
end