def imprime_tablero
black =[[" _______ "],["|       |"],["|       |"],["|       |"],["|_______|"]]
white = [[" _______ "],["|||||||||"],["|||||||||"],["|||||||||"],["|||||||||"]]

torre_B= "|Torre_B|"
caballo_B = "|Horse_B|"
alfil_B= "|Alfil_B|"
rey_B = "| Rey_B |"
reina_B = "|Reina_B|"
peon_B = "|Peon_B |"

torre_W= "|Torre_W|"
caballo_W= "|Horse_W|"
alfil_W= "|Alfil_W|"
reina_W = "|Reina_W|"
rey_W = "| Rey_W |"
peon_W = "|Peon_W |"

  imprime_figuras(torre_W,caballo_W,alfil_W,rey_W,reina_W,white,black)
  imprime_linea(figura(white,peon_W),figura(black,peon_W),1)
  for w in 0..3
      imprime_linea(white,black,w)
  end
  arre1 = white.dup
  arre1[2] = peon_B
  arre2 = black.dup
  arre2[2] = peon_B 
  imprime_linea(figura(white,peon_B),figura(black,peon_B),0)
  imprime_figuras(torre_B,caballo_B,alfil_B,reina_B,rey_B,black,white)
end
def imprime_figuras(fig_1,fig_2,fig_3,fig_4,fig_5,arre_1,arre_2)
  fig1=figura(arre_1,fig_1)
  fig2=figura(arre_2,fig_2)
  fig3=figura(arre_1,fig_3)
  fig4=figura(arre_2,fig_4)
  fig5=figura(arre_1,fig_5)
  fig6=figura(arre_2,fig_3)
  fig7=figura(arre_1,fig_2)
  fig8=figura(arre_2,fig_1)
  for i in 0..fig1.size-1
    aux1,aux2,aux3,aux4,aux5,aux6,aux7,aux8 = "","","","","","","",""
    for j in 0..fig1[i].size-1
      aux1<<fig1[i][j]
      aux2<<fig2[i][j]
      aux3<<fig3[i][j]
      aux4<<fig4[i][j]
      aux5<<fig5[i][j]
      aux6<<fig6[i][j]
      aux7<<fig7[i][j]
      aux8<<fig8[i][j]
    end
      aux1<<aux2<<aux3<<aux4<<aux5<<aux6<<aux7<<aux8
      p aux1 
  end


end
def figura(array,string)
  array = array.dup
  array[2] = string
  array
end

def imprime_linea(arre1,arre2,iteration)
  for i in 0..arre1.size-1
    aux1,aux2 = "",""
    for j in 0..arre1[i].size-1
      aux1<<arre1[i][j]
      aux2<<arre2[i][j]
    end
    if iteration % 2 == 0
      aux2<<aux1
      aux2=aux2*4
      p aux2 
    else 
      aux1<<aux2
      aux1=aux1*4
      p aux1
    end
  end
end

imprime_tablero