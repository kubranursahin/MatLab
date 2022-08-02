function [uzaklik] = sehirEkle(sehirSayisi)

uzaklik = zeros(sehirSayisi,sehirSayisi);
    for i=1:sehirSayisi
        for j=1:i
            if(i ~= j)
                uzaklik(i,j) = randi([10,50]);
                uzaklik(j,i) = uzaklik(i,j);
            end
        end
    end
end

