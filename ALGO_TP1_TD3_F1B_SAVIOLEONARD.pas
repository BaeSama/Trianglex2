{
//BUT:Cette algo doit afficher les deux triangles en appelant leurs procédures.
//ENTREE:1 entier
//SORTIE:Les deux triangles


PROGRAMME Double Triangle

CONST MaxTriangle2 = 10

Type
	MatriceXO = Tableau [1..MaxTriangle1,1..MaxTriangle1] de CAR
	MatriceChiffre = Tableau [1..MaxTriangle2,1..MaxTriangle2] de ENTIER

Procédure Triangle XO(VAR T1:MatriceXO);

	VAR i,j:ENTIER
		car:=CAR

DEBUT
	
	POUR i ALLANT DE 1 A MaxTriangle1 FAIRE
		POUR j ALLANT DE 1 A MaxTriangle1 FAIRE
			SI i=j OU i=-j ALORS
			T1[i,j] <- X
			SINON SI i=MaxTriangle1 ALORS
				T1[i,MaxTriangle1] <- X
			SINON
				T1[i,j] <- O
			FINSI
			FINSI
		FINPOUR
	FINPOUR



		FINPOUR
	FINPOUR


}

Program Trianglex2;

uses crt;

const MaxTriangle2 = 10;

Type
	MatriceXO = array [1..10,1..10] of char;
	MatriceChiffre = array [1..MaxTriangle2,1..MaxTriangle2] of integer;

var T1:MatriceXO;
	T2:MatriceChiffre;
	i,j:integer;
	car:char;


procedure TriangleXO(var T1:MatriceXO);
BEGIN

	For i:=1 to 10 do
	begin
		For j:=1 to 10 do
		begin

		if (i=j) or (i=-j) then
		T1[i,j]:='X';


		if j<i then
		T1[i,j]:='O';

		T1[i,1]:='X';
		T1[10,j]:='X';


                write(T1[i,j])
		end;

		writeln;

	end;

END;

Procedure TriangleChiffre(var T2:MatriceChiffre);
var compteur:integer;

BEGIN
	compteur:=0;
	For i:=1 to MaxTriangle2 do
	begin
		for j:=1 to MaxTriangle2 -i+1 do
		begin
		T2[i,j]:=compteur;
		write(T2[i,j]);
		compteur:=compteur+1;

		end;
		writeln;
	end;

	readln
END;

//PROG PRINCIPAL

BEGIN
clrscr;
TriangleXO(T1);
readln;
TriangleChiffre(T2);
readln;
END.	




