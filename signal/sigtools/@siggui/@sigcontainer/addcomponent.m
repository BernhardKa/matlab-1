function addcomponent(hParent, hChildren)
%ADDCOMPONENT Add a component to the container
%   ADDCOMPONENT(hPARENT, hCHILDREN) Add the objects hCHILDREN to be
%   children of the sigcontainer hPARENT.

%   Author(s): J. Schickler
%   Copyright 1988-2002 The MathWorks, Inc.
%   $Revision: 1.6.4.1 $  $Date: 2007/12/14 15:19:30 $

error(nargchk(2,2,nargin,'struct'));

hChildren = hChildren(:)';

for hindx = hChildren
    if ~isa(hindx, 'siggui.siggui'),
        warning('Signal:sigcontainer:ChildMustBeSiggui', 'Children must inherit from SIGGUI.');
    else
        connect(hParent, hindx, 'down');
    end
end

% Call a separate method to add the listener to the notification event.
% This will allow subclasses to overload this method.
attachnotificationlistener(hParent);

% [EOF]
