clear; clc;

%{
%}

Title = 'Volume of fibrosis over time for different λ1 values';

%==============================Patient 01==================================
%==========================================================================
k=1;
model_list_p01=string(zeros(1,k));

%--list of models 0 hapto--------------------------------------------------
model_list_p01(1,k) = 'model 0 (Df= 0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = '-------------------------------------------------------------------'; k=k+1; %
%model_list_p01(1,k) = 'model D1 (Df= 0.1e-1, Hf= 0)';   k=k+1; % model
model_list_p01(1,k) = 'model D1 (Df= 0.5e-1, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D2 (Df= 0.10e+0, Hf= 0)';  k=k+1; % directory
model_list_p01(1,k) = 'model D3 (Df= 0.15e+0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D4 (Df= 0.20e+0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D5 (Df= 0.25e+0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D6 (Df= 0.30e+0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D7 (Df= 0.50e+0, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = 'model D8 (Df= 0.1e+1, Hf= 0)';  k=k+1; %
model_list_p01(1,k) = '-------------------------------------------------------------------'; k=k+1; %
%--------------------------------------------------------------------------
%}

%--list of models 0 diff---------------------------------------------------
%model_list_p01(1,k) = 'model H0 (Df= 0, Hf= 0.1e-5)';  k=k+1; %

model_list_p01(1,k) = 'model H1 (Df= 0, Hf= -0.1e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H2 (Df= 0, Hf= -0.2e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H3 (Df= 0, Hf= -0.3e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H4 (Df= 0, Hf= -0.4e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H5 (Df= 0, Hf= -0.5e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H6 (Df= 0, Hf= -0.6e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H7 (Df= 0, Hf= -0.8e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H8 (Df= 0, Hf= -0.1e-2)';  k=k+1; %
%model_list_p01(1,k) = ' '; k=k+1; %
model_list_p01(1,k) = '-------------------------------------------------------------------'; k=k+1; %
%{
model_list_p01(1,k) = 'model H (positive values)/model H1 (Df= 0, Hf= 0.1e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H (positive values)/model H2 (Df= 0, Hf= 0.5e-3)';  k=k+1; %
model_list_p01(1,k) = 'model H (positive values)/model H3 (Df= 0, Hf= 0.1e-2)';  k=k+1; %
model_list_p01(1,k) = 'model H (positive values)/model H4 (Df= 0, Hf= 0.2e-2)';  k=k+1; %
model_list_p01(1,k) = 'model H (positive values)/model H5 (Df= 0, Hf= 0.3e-2)';  k=k+1; %
model_list_p01(1,k) = 'model H (positive values)/model H6 (Df= 0, Hf= 0.5e-2)';  k=k+1; %
model_list_p01(1,k) = '----------------------------------'; k=k+1; %
%--------------------------------------------------------------------------
%}

%--list of models diff and adv combination---------------------------------
model_list_p01(1,k) = 'model DH2 [D1+H3] (Df= 0.5e-1, Hf= -0.3e-3)';  k=k+1;  %
model_list_p01(1,k) = 'model DH3 [D1+H5] (Df= 0.5e-1, Hf= -0.5e-3)';  k=k+1;  %
model_list_p01(1,k) = 'model DH4 [D2+H1] (Df= 0.10e+0, Hf= -0.1e-3)';  k=k+1; %
model_list_p01(1,k) = 'model DH5 [D2+H3] (Df= 0.10e+0, Hf= -0.3e-3)';  k=k+1; %
model_list_p01(1,k) = 'model DH6 [D2+H5] (Df= 0.10e+0, Hf= -0.5e-3)';  k=k+1; %
model_list_p01(1,k) = 'model DH7 [D3+H1] (Df= 0.15e+0, Hf= -0.1e-3)';  k=k+1; %
model_list_p01(1,k) = 'model DH8 [D3+H3] (Df= 0.15e+0, Hf= -0.3e-3)';  k=k+1; %
model_list_p01(1,k) = 'model DH9 [D3+H5] (Df= 0.15e+0, Hf= -0.5e-3)';  k=k+1; %
model_list_p01(1,k) = '-------------------------------------------------------------------'; k=k+1; %
%--------------------------------------------------------------------------
%}

%--production rate parameters (λ1, δ and δ1)-----------------------------
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp1 (λ1= 2e-1)';  k=k+1;   % λ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp2 (λ1= 4e-1)';  k=k+1;   %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp3 (λ1= 6e-1)';  k=k+1;   %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp4 (λ1= 8e-1)';  k=k+1;   %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp5 (λ1= 10e-1)';  k=k+1;  %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp6 (λ1= 12e-1)';  k=k+1;  %
%model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rptest (λ1 = 1, thresh=1e-4)';  k=k+1;  %
model_list_p01(1,k) = ' '; k=k+1; %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rptest (δ= 0.5)';  k=k+1;  % δ
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp6 (δ= 5)';  k=k+1;       %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rp7 (δ= 50)';  k=k+1;      %
model_list_p01(1,k) = ' '; k=k+1; %
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd0 (δ1= 0)';  k=k+1;      % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd1 (δ1= 1e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd2 (δ1= 2e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd3 (δ1= 3e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd4 (δ1= 4e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd5 (δ1= 5e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = 'Reaction parameters (λ1, δ)\model Rd6 (δ1= 6e-2)';  k=k+1;   % δ1
model_list_p01(1,k) = '-------------------------------------------------------------------'; k=k+1; %
%--------------------------------------------------------------------------
%}

%--ECM parameters (φ0 and φ1)-----------------------------------------------
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model E0 (φ0= 0, φ1= 0)';  k=k+1; %
model_list_p01(1,k) = ' '; k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC1 (φ0= 1e+1)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC2 (φ0= 1e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC3 (φ0= 1e+3)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC4 (φ0= 1e+4)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC5 (φ0= 1e+5)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EC6 (φ0= 1e+6)';  k=k+1; %
%model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model 0 (φ0=7.465e+1)';  k=k+1; %
%model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model 0 (φ0=7.465e+2)';  k=k+1; %
model_list_p01(1,k) = ' '; k=k+1; %
%model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF1 (φ1= 1e+1)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF1 (φ1= 1e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF2 (φ1= 2e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF3 (φ1= 3e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF4 (φ1= 4e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF5 (φ1= 5e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF6 (φ1= 6e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF7 (φ1= 8e+2)';  k=k+1; %
model_list_p01(1,k) = 'ECM parameters (φ0, G0)\model EF8 (φ1= 1e+3)';  k=k+1; %
%--------------------------------------------------------------------------
%}

title_01='Patient 01';
indx_01 = listdlg('ListString',  model_list_p01, 'ListSize',[350,550], 'Name', title_01);



%==============================Patient 05==================================
%==========================================================================
h=1;
model_list_p05=string(zeros(1,h));

%--list of models 0 hapto--------------------------------------------------
model_list_p05(1,h) = 'model1 (0 diff - 0 adv)';  h=h+1; %
%model_list_p05(1,h) = 'model2 (e-5)';  h=h+1;                 % same as 0
%model_list_p05(1,h) = 'model4 (0.1e-3 diff - 0 adv)';  h=h+1; %
%model_list_p05(1,h) = 'model5 (0.1e-2 diff - 0 adv)';  h=h+1; %
model_list_p05(1,h) = 'model6 (0.1e-1 diff - 0 adv)';  h=h+1; %
model_list_p05(1,h) = 'model7 (0.1e+0 diff - 0 adv)';  h=h+1; %
model_list_p05(1,h) = 'model9 (0.5e+0 diff - 0 adv)';  h=h+1; %
model_list_p05(1,h) = '-------------------------------------------------------------------'; h=h+1;
%--------------------------------------------------------------------------
%}

%--list of models 0 diff---------------------------------------------------
model_list_p05(1,h) = 'model10 (0 diff - 0.1e-3 adv)';  h=h+1; %
model_list_p05(1,h) = 'model11 (0 diff - 0.5e-3 adv)';  h=h+1; %
model_list_p05(1,h) = '-------------------------------------------------------------------'; h=h+1; %
%--------------------------------------------------------------------------
%}

title_05='Patient 05';
indx_05 = listdlg('ListString',  model_list_p05, 'ListSize',[200,450], 'Name', title_05);

%==========================================================================

%model_list(1,k) = 'model5 (e-2)';  k=k+1; %

%model_list = string(zeros(1,k));

%for j=1:k
    %mod=eval('h'+string(j)+'_model_folder');
    %model_list(1,j) = mod;
%end



hp_dir=string(zeros(1,length(indx_01)));
hp=zeros(1,length(indx_01));
variables=string(zeros(1,length(indx_01)));
m=0;

%===========================Patient 01 plots===============================

for p=1:length(indx_01)    % opens all the figures chosen from the list
    %mod=eval('h'+string(indx(1,p))+'_model_folder');
    mod=model_list_p01(1,indx_01(1,p));
    variables(1,p)=mod;
    if variables(1,p)=='-------------------------------------------------------------------'
        m=m+1;
        continue
    elseif variables(1,p)==' '
        m=m+1;
        continue
    end
    hp_dir(1,p)=fullfile( 'c:', 'Users', 'raffi', 'Desktop', 'Paraview Patients', 'P01', variables(1,p), 'Volume Data', 'threshold volume.fig');
    hp(1,p)=openfig(hp_dir(1,p));
end

%===========================Patient 05 plots===============================
mm=0;

if isempty(p)
    p=0;
end

for g=1:length(indx_05)
    % g=p+1:length(indx_01)+length(indx_05)
    mod=model_list_p05(1,indx_05(1,g));
    variables(1,p+g)=mod;
    if variables(1,p+g)=='-------------------------------------------------------------------'
        mm=mm+1;
        continue
    elseif variables(1,p)==' '
        m=m+1;
        continue
    end
    hp_dir(1,p+g)=fullfile( 'c:', 'Users', 'raffi', 'Desktop', 'Paraview Patients', 'P05', variables(1,p+g), 'Volume Data', 'threshold volume.fig');
    hp(1,p+g)=openfig(hp_dir(1,p+g));
end

hp = hp(hp~=0);

indx_length=length(indx_01)+length(indx_05)-m-mm;

%---subplot properties---
figure
h(1)=subplot(1,1,1);
set(gca,'FontSize',20)
title(Title, 'FontSize', 35)
grid on
legend('Location', 'northwest', 'FontSize',20)
xlabel('Time (days)', 'FontSize',35)
ylabel('Volume (mm^{3})', 'FontSize',35)
%ylim(h(1), [0 3.5e5]);
xlim(h(1), [0 370]);
pbaspect([1.25 1 1])
%------------------------


for q=1:indx_length% copies all plots on the subplot
    copyobj(allchild(get(hp(1,q),'CurrentAxes')),h(1));
end

if isempty(indx_01) && isempty(indx_05)   % if cancel prompt then it closes the empty subplot
    close(figure(1))
else
    for i=1:indx_length
        close(figure(i))
    end
end

clc;
