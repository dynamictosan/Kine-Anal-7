function sys = make_system()
%MAKE_SYSTEM Create a data structure to store complete multibody system

sys = struct();

sys.bodies = struct([]);

sys.joints = struct('revolute', struct([]), ...
    'simple', struct([]), ...
    'simple_driving', struct([]), ...
    'translation', struct([]));

sys.forces = struct('rotational_spring', []);

sys.balpha=5;

sys.bbeta=5;

% sys.gravity = [];

sys.solver = struct('t_final', 1, 't_step', 0.01);

end

