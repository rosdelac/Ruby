class Board
#"POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"]
#"XXXXPXXXXLXAMXAXIEXTXDLXAXNOXNMANGOXSXXX"
 @@boards_templates= "OJORXXXXXXXEXXOXDXRXXRGLXXEXUXNVXZXXXXAX"
  @@super = ""
  
  def initialize
      complete_board!
  end

  def to_s
    aux=@@boards_templates.chars.map! { |x| x.ljust(3)}
    for i in 0..7
       print "#{aux[i*5..i*5+4].join}\n" 
    end 
  end

  private
  def complete_board!
    for i in 0..@@boards_templates.size
    @@boards_templates.sub!("X", ('A'..'Z').to_a.sample)
    end
  end
  
  private
  def make_arre(str)
    arre=[]
    for i in 0..7
      arre<<str.chars.slice(i*5,5)
    end
    arre
  end
  private
  def make_arre2(str)
    arre=[]
    for i in 0..7
      arre<<str.chars.slice(i*5,5).reverse
    end
    arre
  end

  private
  def verticales(arre)
    str=""
    for i in 0..4
      for j in 0..7
        str<<arre[j][i]
      end
    end
      str
  end

  private
  def diagonal1(arre)
    aux = 0
    string=""
    for k in 0..arre.size*2 - arre[0].size
      for j in 0..k
        aux = k - j
        if aux < arre.size && j < arre[0].size
          string<< "#{arre[aux][j]}"
        end
      end
    end
    string
  end
  private
  def diagonal2(arre)
    aux = 0
    string1=""
    for k in 0..arre.size*2 - arre[0].size
      string2=""
      for j in 0..k
        aux = k - j
        if aux < arre.size && j < arre[0].size
          string2<< "#{arre[aux][j]}"
        end
      end
      string1<<string2.reverse
    end
    string1
  end

  private 
  def hazme_super
    vertical=verticales(make_arre(@@boards_templates))
    diag1=diagonal1(make_arre(@@boards_templates))
    diag2=diagonal2(make_arre2(@@boards_templates))
    @@super<<@@boards_templates<<@@boards_templates.reverse<<vertical<<vertical.reverse<<diag1<<diag1.reverse<<diag2<<diag2.reverse
  end

  public
  def include?(word)
    hazme_super
    p @@super.match(/#{word}/) ? "ENCONTRADA" : "NO ENCONTRADA"
  end

end
 
board = Board.new
puts "Tu juego es:"
puts board
print "Dame palabra: "
word=gets.chomp.upcase!
while word != "EXIT"
board.include?(word)
print "Dame palabra: "
word=gets.chomp.upcase!  
end




















