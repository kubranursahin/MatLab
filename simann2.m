function [obj,iterasyon] = simann2(as,us,d,delta,T,Tend,sk)

cozum = unifrnd(as,us,[1,d]);
obj = sum(cozum.^2);
iterasyon = 1;
while T > Tend
degisim_miktari = unifrnd(-(us-as)*delta/2,(us-as)*delta/2, [1,d]);
komsu = cozum+degisim_miktari;
obj_komsu = sum(komsu.^2);

if obj_komsu<=obj
    cozum=komsu;
    obj=obj_komsu;
else
    de=obj_komsu-obj;
    pa=exp(-de/T);
    rs=unifrnd(0,1);
    if rs<pa
        cozum=komsu;
        obj=obj_komsu;
    end
end
T=T*sk;
iterasyon=iterasyon+1;

end
end