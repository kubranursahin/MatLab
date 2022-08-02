clc;
fprintf('Tavlama Benzetimi ile TSP Çözümü....\n');
sehirSayisi = input('Sehir sayisini giriniz : ');

%Şehirlerin uzaklıkları simüle edilecek

uzaklik = zeros(sehirSayisi,sehirSayisi);
for i=1:sehirSayisi
    for j=1:sehirSayisi
        fprintf('[%d][%d] ', i,j);
    end
    fprintf('\n');
end


