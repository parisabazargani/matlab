classdef Voxel
    properties (SetAccess = public , GetAccess = public)
        id;        
        neighbors = [];
        hasData;
        state;
        isWhite;
    end
    methods(Access = public)
       function  A = Voxel(x)
         A.id = x;
         A.isWhite = false;           
         A.hasData = false;
         A.state = false;
       end
    end
end