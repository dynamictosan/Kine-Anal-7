function sys = add_body(sys, name, location, orientation, m, Ic)
%ADD_BODY Add single body to the multibody system
    arguments
        sys (1,1) struct
        name (1,1) string
        location (2,1) double = [0; 0]
        orientation (1,1) double = 0 
        m (1,1) double = 1.0
        Ic (1,1) double = 1e-3
    end
    body = struct("name", name);
    body.location = location;
    body.orientation = orientation;
    body.m = m;
    body.Ic = Ic;

    sys.bodies = [sys.bodies, body];
end

