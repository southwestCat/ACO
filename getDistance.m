%%
% 计算地球上两点之间距离，输入为纬度和精度，单位 km
%%
function distance=getDistance(X)
earthRadius = 6371.0;
len  = length(X);
distance = zeros(len,len);
for i=1:len-1
    for j=(i+1):len
        lon1 = X(i,1)*pi/180;
        lat1 = X(i,2)*pi/180;
        lon2 = X(j,1)*pi/180;
        lat2 = X(j,2)*pi/180;
        vLon = abs(lon1-lon2);
        vLat = abs(lat1-lat2);
        h = haversin(vLat) + cos(lat1)*cos(lat2)*haversin(vLon);
        distance(i,j) = 2*earthRadius*asin(sqrt(h));
    end
end
distance = distance+distance';
