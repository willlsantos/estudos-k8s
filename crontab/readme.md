
# Como um Crontab Funciona?

  

O formato para a configuração de um crontab é esse aqui:

*/1 * * * *

No comando acima está configurado que a cada minuto, independente do dia da semana, do mês e da hora, ele irá executar o comando.

  

## Tá, mas o que significa!?

Vamos por partes, para configurar o crontab precisamos entender para que ele serve.

O Crontab é utilizado para agendar tarefas recorrentes, e essas tarefas recorrentes são chamadas de cronjobs.

O crontab possui seis colunas, que correspondem aos minutos, horas, dias, meses, semanas e os comandos que você quer que sejam executados  

Cada campo permite alguns valores, são:

| Campo | Valores permitidos |
| :----: | :----: |
| Minuto | 0-59 |
| Hora | 0-23 |
| Dia do Mês | 1-31 |
| Mês | 1-12 |
| Dia da Semana | 0-7 |

Percebeu que o dia da semana inicia no **0**? Pois o na config de um cronjob ele tem os seguintes campos:

| Valor | Dia da Semana |
| :---: | :---: |
| 0 | Domingo |
| 1 | Segunda |
| 2 | Terça |
| 3 | Quarta |
| 4 | Quinta |
| 5 | Sexta |
| 6 | Sábado |
| 7 | Domingo **novamente.** |

*/1 -> Significa que a cada um minuto o meu comando será executado

"*" -> significa a qualquer minuto

## Exemplos

00 10 * * * root sync

 **Executa o comando sync todo o dia as 10:00**


00 06 * * 1 root updatedb

** Executa o comando updatedb toda segunda-feira as 06:00. **


## Referências:

https://www.guiafoca.org/guiaonline/intermediario/ch26s11.html

https://medium.com/totvsdevelopers/entendendo-o-crontab-607bc9f00ed3
