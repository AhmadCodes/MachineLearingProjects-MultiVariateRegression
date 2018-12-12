tC =[];CV_C =[];tstC =[];L =[];DOP =[];

tC = [tC, 0.4279]; CV_C =[CV_C, 0.4872]; tstC =[tstC,  0.8272]; DOP =[DOP, 1];
tC = [tC, 0.3889]; CV_C =[CV_C, 0.3551]; tstC =[tstC,  0.5143]; DOP =[DOP, 2];
tC = [tC, 0.3659]; CV_C =[CV_C, 0.3756]; tstC =[tstC,  0.4970]; DOP =[DOP, 3];
tC = [tC, 0.3529]; CV_C =[CV_C, 0.3338]; tstC =[tstC,  0.4664]; DOP =[DOP, 4];
tC = [tC, 0.3166]; CV_C =[CV_C, 0.3499]; tstC =[tstC,  0.4167]; DOP =[DOP, 5];
%       DOP   train   CV    test
Lzero = [DOP;  tC;   CV_C;];

%% =======================================================================
tC =[];CV_C =[];tstC =[];L =[];
tC = [tC, 0.3391]; CV_C =[CV_C, 0.3483]; tstC =[tstC,  0.4633]; L =[L, 0.000001];
tC = [tC, 0.3665]; CV_C =[CV_C, 0.2985]; tstC =[tstC,  0.4237]; L =[L, 0.010];
tC = [tC, 0.3268]; CV_C =[CV_C, 0.3628]; tstC =[tstC,  0.5860]; L =[L, 0.080];
tC = [tC, 0.3177]; CV_C =[CV_C, 0.3669]; tstC =[tstC,  0.6296]; L =[L, 0.100];
tC = [tC, 0.3345]; CV_C =[CV_C, 0.3165]; tstC =[tstC,  0.4111]; L =[L, 1.000];
tC = [tC, 0.3623]; CV_C =[CV_C, 0.3341]; tstC =[tstC,  0.4200]; L =[L, 10.000];
tC = [tC, 0.3717]; CV_C =[CV_C, 0.3987]; tstC =[tstC,  0.5682]; L =[L, 100.000];
tC = [tC, 0.5425]; CV_C =[CV_C, 0.6790]; tstC =[tstC,  1.2434]; L =[L, 1000.000];
tC = [tC, 0.6925]; CV_C =[CV_C, 0.8483]; tstC =[tstC,  1.4417]; L =[L, 5000.000];
tC = [tC, 0.7373]; CV_C =[CV_C, 0.9337]; tstC =[tstC,  1.2741]; L =[L, 10000.000];
tC = [tC, 0.8763]; CV_C =[CV_C, 0.8829]; tstC =[tstC,  1.0497]; L =[L, 100000.000];
