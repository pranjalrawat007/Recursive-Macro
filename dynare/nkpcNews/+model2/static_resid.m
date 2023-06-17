function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = model2.static_resid_tt(T, y, x, params);
end
residual = zeros(20, 1);
lhs = y(10);
rhs = params(2)*y(10)+T(2)*y(6);
residual(1) = lhs - rhs;
lhs = y(6);
rhs = y(6)+T(3)*(y(9)-y(10)-y(7));
residual(2) = lhs - rhs;
lhs = y(4);
rhs = y(1)+(1-params(1))*y(11);
residual(3) = lhs - rhs;
lhs = y(12);
rhs = params(5)*y(3)+params(6)*y(11);
residual(4) = lhs - rhs;
lhs = y(4);
rhs = y(3);
residual(5) = lhs - rhs;
lhs = y(1);
rhs = y(1)*params(3)+x(1)+x(2);
residual(6) = lhs - rhs;
lhs = y(2);
rhs = y(2)*params(4)+x(3);
residual(7) = lhs - rhs;
lhs = y(7);
rhs = y(2)*(1-params(4))+y(1)*(1-params(3))*T(1)*(-params(5));
residual(8) = lhs - rhs;
lhs = y(8);
rhs = y(9)-y(10);
residual(9) = lhs - rhs;
lhs = y(5);
rhs = T(1)*y(1);
residual(10) = lhs - rhs;
lhs = y(6);
rhs = y(4)-y(5);
residual(11) = lhs - rhs;
lhs = y(9);
rhs = y(7)+y(10)*params(9)+y(6)*params(10);
residual(12) = lhs - rhs;
lhs = y(13);
rhs = x(2);
residual(13) = lhs - rhs;
lhs = y(14);
rhs = x(2);
residual(14) = lhs - rhs;
lhs = y(15);
rhs = x(2);
residual(15) = lhs - rhs;
lhs = y(16);
rhs = x(2);
residual(16) = lhs - rhs;
lhs = y(17);
rhs = x(2);
residual(17) = lhs - rhs;
lhs = y(18);
rhs = x(2);
residual(18) = lhs - rhs;
lhs = y(19);
rhs = x(2);
residual(19) = lhs - rhs;
lhs = y(20);
rhs = x(2);
residual(20) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end