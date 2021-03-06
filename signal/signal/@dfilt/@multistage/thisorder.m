function n = thisorder(Hd)
%THISORDER Filter order.
%   THISORDER(Hd) returns the order of filter Hd.
%
%   See also DFILT.   
  
%   Author: Thomas A. Bryan
%   Copyright 1988-2004 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2005/06/16 08:19:23 $

% This should be private

[b,a] = tf(Hd);

% Converting to statespace may have left some coefficients very near zero
% because of numerical roundoff.  Remove trailing zeros.

% Normalize vectors so that there is not a large difference in magnitudes.
if ~isempty(b) & max(abs(b))~=0
  b = b/max(abs(b));
end
if ~isempty(a) & max(abs(a))~=0
  a = a/max(abs(a));
end

% Remove trailing "zeros" of a & b.
if ~isempty(b)
  b = b(1:max(find(b~=0)));
end
if ~isempty(a)
  a = a(1:max(find(a~=0)));
end

n = max(length(b),length(a)) - 1;

