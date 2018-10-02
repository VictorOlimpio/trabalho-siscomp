require './cache'
require './mapping/associative'
require './algorithm/random_subst'
class Main
  def run
    c1 = Cache.new(Mapping::Associative.new(Algorithm::RandomSubst,8))
    c1.read(10)
    c1.print
    c1.read(9)
    c1.print
    c1.read(5)
    c1.print
    c1.read(6)
    c1.print
    c1.read(1)
    c1.print
    c1.read(8)
    c1.print
    c1.read(11)
    c1.print
    c1.read(15)
    c1.print
    c1.read(1)
    c1.print
    c1.read(12)
    c1.print
    c1.read(10)
    c1.print
    c1.read(4)
    c1.print
    c1.read(15)
    c1.print
    c1.read(10)
    c1.print
    c1.read(7)
    c1.print
    c1.read(7)
    c1.print
    c1.read(11)
    c1.print
    c1.read(1)
    c1.print
    c1.read(10)
    c1.print
    c1.read(4)
    c1.print
  end
end