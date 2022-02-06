/ .statq.math.uniform[-1;1;100]
.statq.math.runiform:{
    x+(z?1f)*y-x
 };

/ .statq.math.percentile[1 2 3 4 5;0.5]
.statq.math.percentile:{
    x min(-1+(#:)x),(_:)y*(#:)x:asc x
 };

/ .statq.math.sigmoid 0.4
.statq.math.sigmoid:{
    1%1+exp neg x
 };

/ .statq.math.distance.euclidean[1 2 3 4f;5 6 7 8f]
.statq.math.distance.euclidean:{
    sqrt sum xexp[y-x;2]
 };

.statq.math.standardize:{
    (x-avg x)%dev x
 };

.statq.math.normalize:{
    (x-min x)%max[x]-min x
 };