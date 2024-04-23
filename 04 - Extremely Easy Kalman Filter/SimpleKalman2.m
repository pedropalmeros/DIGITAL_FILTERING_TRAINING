## Copyright (C) 2024 pedro
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} SimpleKalman (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: pedro <pedro@DESKTOP-VR7KBCK>
## Created: 2024-04-17
function [volt Px K] = SimpleKalman2(z)
%
%
persistent A H Q R
persistent x P
persistent firstRun


if isempty(firstRun)
  A = 1;
  H = 1;

  Q = 0;
  R = 4;

  x = 14;
  P =  6;

  firstRun = 1;
end


xp = A*x;
Pp = A*P*A' + Q;

K = Pp*H'*inv(H*Pp*H' + R);

x = xp + K*(z - H*xp);
P = Pp - K*H*Pp;


volt = x;
Px   = P;
endfunction
