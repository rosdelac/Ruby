gato = [ ["X", "X", "O"],
         ["O", "X", "O"],
         ["O", "O", "X"] ]
def crea_Gato
  cat = Array.new(3) { Array.new(3) }
  sim = ["X","O"]
  inicial = sim.sample
  for i in 0..2
    for j in 0..2
      cat[i][j] = inicial
      inicial = next_sim(inicial)
    end
    cat[i].shuffle!
  end
  p cat.shuffle!
end     
def next_sim(str)
 str == "O" ? "X" : "O"
end    




 table = [["Nombre", "Edad", "Genero", "Grupo","Calificaciones"],["Rodrigo Garcia", 13, "Masculino", "Primero", [9,9,7,6,8]],["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6,9,8,6,8]],["Luis Perez", 13, "Masculino", "Primero",[8,7,7,9,8]],["Ana Espinosa", 14, "Femenino", "Segundo",[9,9,6,8,8]],["Pablo Moran", 11, "Masculino", "Segundo",[7,8,9,9,8]]]

table3 = []
for j in 1..4
  table2 = []
 for i in 0..4
  table2 << [table[0][i],table[j][i]]
 end
  table3 << Hash[ table2 ]
end

 p table3
