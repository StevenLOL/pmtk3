

setSeed(0);
N = 20; D = 10;
w = randn(D,1);
ndx = randperm(D);
w(ndx(1:5))=0;
w'
keep = find(w ~= 0);
%X = randn(N,D);
Sigma = randpd(D);
mu = randn(D,1);
X = gaussSample(mu,Sigma,N);
sigma = 0.1;
y = X*w + sigma*randn(N,1);

%{
load('prostate.mat') % from prostateDataMake
[N,D] = size(X);
sigma = 1;
%}

numofmodel = 2^D;
sigmaPrior = 100; % variance of included weights
bitPrior = 0.1;
score = zeros(1, numofmodel);
Models = zeros(numofmodel, D);
for i= 1:numofmodel
   if i==1
      s = zeros(1,D);
   else
      s = graystep(s, 1);
   end
   Models(i,:) = s;
   Rs = diag(sigmaPrior*s);
   norm0 = sum(s);
   Phi1Inv = inv(X*Rs*X' + sigma*eye(N,N));
   scoreSS(i) = - 0.5*y'*Phi1Inv*y + 0.5*log(det(Phi1Inv))- 0.5*N*log(2*pi) ...
      + norm0*(log(bitPrior) - log(1-bitPrior)) + N*log(1-bitPrior);
end



figure
imagesc(Models');
printPmtkFigure('grayCodeModels')

figure
plot(scoreSS);
title('log p(s,y)')
axis_pct
printPmtkFigure('grayCodeLogpost')

post = exp(normalizeLogspace(scoreSS));
figure;
stem(post)
axis_pct
title('p(s|y)')
printPmtkFigure('grayCodePost')

marg = sum(Models .* repmat(post(:), 1, D), 1);
figure; 
bar(marg)
title('p(s(j)|y')
printPmtkFigure('grayCodeMarg')

ndx = find(post>=0.01);
for i=1:length(ndx)
   m = ndx(i);
   fprintf('%5.3f: ', post(m));
   fprintf('%d ', find(Models(m,:)))
   fprintf('\n')
end

fprintf('%4.2f, ', w); fprintf('\n')

