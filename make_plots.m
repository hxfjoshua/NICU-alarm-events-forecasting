% plot overtraining loss and accuracy
overtraining = readtable('overtraining_loss_accuracy.csv');
loss = overtraining.loss_values;
val_loss = overtraining.val_loss_values;
acc = overtraining.acc_values;
val_acc = overtraining.val_acc_values;
epoch = 1:400;

str1 = '#0072BD';
color1 = sscanf(str1(2:end),'%2x%2x%2x',[1 3])/255;
str2 = '#EDB120';
color2 = sscanf(str2(2:end),'%2x%2x%2x',[1 3])/255;

figure
plot(epoch,loss,'Color',color1,'LineWidth',1.5)
hold on
plot(epoch,val_loss,'Color',color2,'LineWidth',1.5)
legend('Train','Validation')
xlabel('Epoch')
ylabel('Loss')

figure
plot(epoch,acc,'Color',color1,'LineWidth',1.5)
hold on
plot(epoch,val_acc,'Color',color2,'LineWidth',1.5)
legend('Train','Validation')
xlabel('Epoch')
ylabel('Accuracy')


% plot final model loss and accuracy
final_model = readtable('final_model_loss_accuracy.csv');
loss = final_model.loss_values;
val_loss = final_model.val_loss_values;
acc = final_model.acc_values;
val_acc = final_model.val_acc_values;
epoch = 1:126;

str1 = '#0072BD';
color1 = sscanf(str1(2:end),'%2x%2x%2x',[1 3])/255;
str2 = '#EDB120';
color2 = sscanf(str2(2:end),'%2x%2x%2x',[1 3])/255;

figure
plot(epoch,loss,'Color',color1,'LineWidth',1.5)
hold on
plot(epoch,val_loss,'Color',color2,'LineWidth',1.5)
legend('Train','Validation')
xlabel('Epoch')
ylabel('Loss')
xlim([0 130])

figure
plot(epoch,acc,'Color',color1,'LineWidth',1.5)
hold on
plot(epoch,val_acc,'Color',color2,'LineWidth',1.5)
legend('Train','Validation')
xlabel('Epoch')
ylabel('Accuracy')
xlim([0 130])

% successful example 1
desat1 = csvread('desaturation_example_1.csv');
time = 1:180;
figure
plot(time,desat1,'Color',color1,'LineWidth',1.5)
hold on
line([120 120],[80 100],'Color','green','LineStyle',':','LineWidth',1.5)
line([0 180],[91 91],'Color','red','LineStyle','--','LineWidth',1.5)
line([0 180],[99 99],'Color','red','LineStyle','--','LineWidth',1.5)
xlabel('time (s)')
ylabel('SpO_2 (%)')
xlim([0 180])

% successful example 2
desat2 = csvread('desaturation_example_2.csv');
time = 1:180;
figure
plot(time,desat2,'Color',color1,'LineWidth',1.5)
hold on
line([120 120],[70 100],'Color','green','LineStyle',':','LineWidth',1.5)
line([0 180],[91 91],'Color','red','LineStyle','--','LineWidth',1.5)
line([0 180],[99 99],'Color','red','LineStyle','--','LineWidth',1.5)
xlabel('time (s)')
ylabel('SpO_2 (%)')
xlim([0 180])

% unsuccessful example 1
unsucc1 = csvread('false_oversat_example.csv');
time = 1:180;
figure
plot(time,unsucc1,'Color',color1,'LineWidth',1.5)
hold on
line([120 120],[90 100],'Color','green','LineStyle',':','LineWidth',1.5)
line([0 180],[91 91],'Color','red','LineStyle','--','LineWidth',1.5)
line([0 180],[99 99],'Color','red','LineStyle','--','LineWidth',1.5)
xlabel('time (s)')
ylabel('SpO_2 (%)')
xlim([0 180])

% unsuccessful example 2
unsucc2 = csvread('miss_desat_example.csv');
time = 1:180;
figure
plot(time,unsucc2,'Color',color1,'LineWidth',1.5)
hold on
line([120 120],[75 100],'Color','green','LineStyle',':','LineWidth',1.5)
line([0 180],[91 91],'Color','red','LineStyle','--','LineWidth',1.5)
line([0 180],[99 99],'Color','red','LineStyle','--','LineWidth',1.5)
xlabel('time (s)')
ylabel('SpO_2 (%)')
xlim([0 180])