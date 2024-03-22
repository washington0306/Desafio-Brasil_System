#Tarefa - 6: Faça um programa que, dado um número a partir do qual deve-se começar a
#contagem regressiva, imprima na tela a contagem regressiva desse número até 0. Ao final
#da contagem, imprima a mensagem KABUM

puts 'Digite um valor positivo: '
value = gets.chomp

puts 'iniciando a contagem regressiva...'
value.to_i.downto(0) do |i|
  puts i 
end

puts 'KABUM!!!'