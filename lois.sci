function d = normale(mu,sigma,x)
  C = 1/(sqrt(2*%pi)*sigma)
  d = C * exp(-.5* (x-mu).^2 / sigma^2)
endfunction
function g = geometrique(p,n)
  q = 1-p
  g = p * q^n
endfunction
function p = poisson(a,n)
  p = exp(-a) * a^n ./ factorial(n)
endfunction

///////////////////////////////
//// loi normale
// clf()
// x = linspace(-5,5)
// plot(x,normale(0,1,x))
///////////////////////////////
//// loi de Poisson
// clf()
// x = 0:5
// plot(x,poisson(1,x))
///////////////////////////////
//// loi géométrique
// clf()
// x = 1:5
// plot(x,geometrique(.5,x))
