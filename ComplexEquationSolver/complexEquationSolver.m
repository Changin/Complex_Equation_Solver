% 프로그램 complexEquationSolver.m : 복소 선형 연립방정식 계산기 (~4변수), Complex equation solver (maximum 4 unknowns)
% 2023.05.26, Chang-in Baek
% input var:
%	unknowns	%풀이할 미지수의 갯수
%	equations 	%방정식 행렬
% output var :
% function :
%	dispSol()	%화면출력함수
% parameter :
%	vars		%방정식을 풀기위한 solve()함수의 인자

% 입력부:
% 미지수의 갯수 (1~4)
unknowns = 2;
% 독립변수 지정(기호)
syms x y z t;
% 연립방정식 지정
%equations = [2*x - 1 == 44] %1원 1차
%equations = [(2+1.5j)*x - (1-0.5j)*y == 5; (1-0.5j)*x - (2+1.5j)*y == (5-5*sqrt(3)*1j)] %2원 1차연립
equations = [(3/10)*x - (1/5)*y == 7; (-1/5)*x + (1/5 + 1j/15)*y == (-2j-2)]

% 계산부:
% 방정식 풀기
vars = [];
if (unknowns==1)
	vars = [x];
	[sol_x] = solve(equations, vars);
elseif (unknowns==2)
	vars = [x, y];
	[sol_x, sol_y] = solve(equations, vars);
elseif (unknowns==3)
	vars = [x, y, z];
	[sol_x, sol_y, sol_z] = solve(equations, vars);
elseif (unknowns==4)
	vars = [x, y, z, t];
	[sol_x, sol_y, sol_z, sol_t] = solve(equations, vars);
else
	disp("unknowns count error (1~4)");
	unknowns = 0;
end

% 출력부:
if (unknowns>=1)
	dispSol(sol_x, 'x');
end
if (unknowns>=2)
	dispSol(sol_y, 'y');
end
if (unknowns>=3)
	dispSol(sol_z, 'z');
end
if (unknowns>=4)
	dispSol(sol_t, 't');
end
