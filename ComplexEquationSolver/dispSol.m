% 프로그램 dispSol.m : 연립방정식 해 출력함수 for Complex equation solver
% 2023.05.26, Chang-in Baek
% input var:
% output var :
% function :
% parameter :

function dispSol(Complex, name)
	disp_solution = Complex; %표현할 해 지정
	realpart = real(disp_solution); %실수부;
	imagpart = imag(disp_solution); %허수부;
	[theta, rho] = cart2pol(realpart, imagpart); %복소수를 편각, 크기로 변환
	fprintf("%c = \n  직교좌표 : %.3f + j(%.3f)\n",name, realpart, imagpart);
	fprintf("  극좌표 : r*e^(j*theta)\n");
	fprintf("\t r = %s = %s ~= %f\n",sym(norm([realpart,imagpart])), rho, double(rho));
	fprintf("\t theta = %s ~= %f(radian) = %f(degree)\n\n", theta, double(theta), double(theta*180/pi));
end