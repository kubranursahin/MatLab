function obj = mesafeHesapla(uzaklik,cozum)
   obj=0;
    for i=1:length(cozum)-1
        obj = obj + uzaklik (cozum(i), cozum(i+1));
    end
    obj = obj + uzaklik(cozum(end),cozum(1));
end


