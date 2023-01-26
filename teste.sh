#!/bin/bash
echo "Digite o tempo de espera entre os testes:"
read tempo_espera;
echo "Digite a quantidade de testes a serem realizados:"
read qtd_testes;
echo "Digite o nome do arquivo a ser computado:"
read arquivo;

for i in $(seq 1 1 $qtd_testes);
do
  echo "Execução do teste número $i"
  aws s3 cp s3://marla-output-test-ronald/$arquivo.txt s3://marla-input-test-ronald/marla-test/
  sleep $tempo_espera
done

