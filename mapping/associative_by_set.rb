class Mapping::AssociativeBySet
  def self.select(block, length)
    #seleciona a posição do quadro na cache de forma direta
    frame_position = block % length
  end
end