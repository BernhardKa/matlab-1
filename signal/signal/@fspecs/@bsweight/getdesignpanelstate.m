function s = getdesignpanelstate(this)
%GETDESIGNPANELSTATE   Get the designpanelstate.

%   Author(s): J. Schickler
%   Copyright 2004-2005 The MathWorks, Inc.
%   $Revision: 1.1.6.2 $  $Date: 2005/06/16 08:30:28 $

s = aswofs_getdesignpanelstate(this);

s.Components{1}.Tag    = 'fdadesignpanel.bsfreqpassstop';
s.Components{1}.Fpass1 = sprintf('%g', this.Fpass1);
s.Components{1}.Fstop1 = sprintf('%g', this.Fstop1);
s.Components{1}.Fstop2 = sprintf('%g', this.Fstop2);
s.Components{1}.Fpass2 = sprintf('%g', this.Fpass2);

% [EOF]
