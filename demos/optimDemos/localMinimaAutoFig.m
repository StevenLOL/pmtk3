function createfigure(X1, Y1)
%CREATEFIGURE(X1,Y1)
%  X1:  vector of x data
%  Y1:  vector of y data

%  Auto-generated by MATLAB on 28-Jun-2009 15:14:48

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[0.07056 35.07]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[-0.788 1.012]);
box(axes1,'on');
hold(axes1,'all');

% Create plot
plot(X1,Y1,'LineWidth',3,'Color',[0 0 0]);

% Create xlabel
xlabel({''});

% Create textbox
annotation(figure1,'textbox',[0.3628 0.7995 0.2482 0.1003],'String',{'global maximum'},...
  'FontSize',12,...
  'LineStyle','none',...
  'Color',[1 0 0]);

% Create arrow
annotation(figure1,'arrow',[0.3574 0.1733],[0.8562 0.8462],'LineWidth',2,'Color',[1 0 0]);

% Create textbox
annotation(figure1,'textbox',[0.4225 0.6646 0.2095 0.1003],'String',{'local maxima'},...
  'FontSize',12,...
  'LineStyle','none',...
  'EdgeColor',[1 0 0],...
  'Color',[1 0 0]);

% Create arrow
annotation(figure1,'arrow',[0.4225 0.3151],[0.7157 0.6756],'LineWidth',2,'Color',[1 0 0]);

% Create arrow
annotation(figure1,'arrow',[0.4401 0.4313],[0.6856 0.592],'LineWidth',2,'Color',[1 0 0]);

% Create arrow
annotation(figure1,'arrow',[0.4489 0.5711],[0.689 0.5419],'LineWidth',2,'Color',[1 0 0]);

% Create textbox
annotation(figure1,'textbox',[0.3908 0.1294 0.2412 0.1003],'String',{'global minimum'},...
  'FontSize',12,...
  'LineStyle','none',...
  'Color',[0 0 1]);

% Create textbox
annotation(figure1,'textbox',[0.4531 0.2031 0.2025 0.1003],'String',{'local minima'},...
  'FontSize',12,...
  'LineStyle','none',...
  'Color',[0 0 1]);

% Create arrow
annotation(figure1,'arrow',[0.3926 0.2394],[0.1839 0.1806],'LineWidth',2,'Color',[0 0 1]);

% Create arrow
annotation(figure1,'arrow',[0.4454 0.368],[0.2575 0.2977],'LineWidth',2,'Color',[0 0 1]);

% Create arrow
annotation(figure1,'arrow',[0.507 0.4965],[0.2977 0.3779],'LineWidth',2,'Color',[0 0 1]);

% Create arrow
annotation(figure1,'arrow',[0.5246 0.6197],[0.3077 0.408],'LineWidth',2,'Color',[0 0 1]);
