#Tarefa - 3: Receba uma string e imprima metade da mesma. 

palavra = gets.chomp
metade = 0

while metade < palavra.size / 2  do 
    puts palavra[metade]
    metade +=1 
end