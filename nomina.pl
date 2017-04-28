categoria('juan','titular').
contrato('juan','tco').
horas('juan',40).
categoria('miguel','auxiliar').
contrato('miguel','mto').
horas('miguel',22).
categoria('maria','asistente').
contrato('maria','honorarios').
horas('maria','8').
semestre(18).
pagoporsemestre('titular',20000).
pagoporsemestre('asistente',15000).
pagoporsemestre('auxiliar',17000).
porcentaje('tco',25).
porcentaje('mto',10).
porcentaje('hc',0).
porcentaje('honorarios',0).
pago(A,Y):- categoria(A,B),pagoporsemestre(B,C),horas(A,D),contrato(A,E),porcentaje(E,F),semestre(W),Z is (D*C*W),Y is Z+((Z*F)/100).
