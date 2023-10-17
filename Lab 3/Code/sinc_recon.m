% approximate sinc interpolation 
function xr = sinc_recon(n,xn,Ts,t_fine)

%initialization
xr = zeros(size(t_fine));
wc = pi*1/Ts;

for m = 1:length(t_fine)
    for k = 1:length(n)
        if t_fine(m)-n(k) ~= 0
            xr(m) = xr(m)+(Ts*xn(k)*sin(wc*(t_fine(m)-n(k))))/(pi*(t_fine(m)-n(k)));
        else
            xr(m) = xr(m)+xn(k);
        end
    end
end

end

