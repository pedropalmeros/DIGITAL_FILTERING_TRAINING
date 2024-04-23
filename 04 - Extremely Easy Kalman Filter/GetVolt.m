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
## @deftypefn {} {@var{retval} =} GetVolt (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: pedro <pedro@DESKTOP-VR7KBCK>
## Created: 2024-04-17

function z = GetVolt ()
  w = 0 + 4*randn(1,1);
  z = 14.4 + w;
endfunction
