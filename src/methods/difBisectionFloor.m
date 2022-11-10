function [n] = difbisectionfloor(l, b, a)
n = floor((log(b-a) - log(l))/log(2))
end

