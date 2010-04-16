function postDensityIntervals
%Illustration of central vs high posterior density intervals.

func = @(x)gausspdf(x, 0, 1) + gausspdf(x, 6, 1);
domain = -4:0.001:10;
h = plot(domain , func(domain), '-r', 'LineWidth', 2.5);
axis([-4, 10, 0, 0.5]);
shade(func, 0, -1.5, 7.5, 'b', 0.1);
set(gca, 'XTick', [], 'YTick', []);

annotation(gcf, 'textarrow', [0.1795 0.2454], [0.2971 0.1431], ...
    'TextEdgeColor' , 'none'        , ...
    'FontSize'      , 16            , ...
    'FontName'      , 'Courier New' , ...
    'String'        , {'\alpha/2'}  );

annotation(gcf, 'textarrow', [0.8522 0.7863],[0.2971 0.1431], ...
    'TextEdgeColor' , 'none'        , ...
    'FontSize'      , 16            ,...
    'FontName'      , 'Courier New' , ...
    'String'        , {'\alpha/2'}  );

uistack(h, 'top');
printPmtkFigure centralInterval;
%%
figure;
h = plot(domain, func(domain), '-r', 'LineWidth', 2.5);
axis([-4, 10, 0, 0.5]);
shade(func, 0, -1.5, 1.5, 'b', 0.1);
shade(func, 0, 4.5, 7.5, 'b', 0.1);
line([-4;10], [func(-1.5), func(-1.5)], 'Color','b','LineWidth',2);
set(gca,'XTick', [], 'YTick', func(-1.5), 'YTickLabel', 'pMIN');
uistack(h, 'top');
printPmtkFigure HDP;
end