function outputValue = difdiv(x,y)
    % sin acabar.
    if length(x) ~= length(y)
        disp("x e y no tienen la misma longitud");
        outputValue = nan;
    end

    cantCols = length(x);
    cantFilas = length(x) - 1;
    
    tabla(:,1) = y;

    for col = 1 : cantCols
       disp(col)
       disp(cantFilas)
       
       for fila = 1 : cantFilas
          
           tabla(fila, col + 1) = tabla(fila + 1, col) - tabla(fila, col) / x(fila + 1) - x(fila);
           
       end
       
      cantFilas = cantFilas - 1;

        
    end
    
    outputValue = tabla;

end

