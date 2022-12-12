function convert(path,filename)
    d = load(path);
    d = d.meas;
    data = [d.Time d.Voltage d.Current d.Battery_Temp_degC d.Ah];
    data = array2table(data,'VariableNames' ,{'Time',  'Voltage', 'Current', 'Battery_Temp_degC', 'Ah'});
    writetable(data,filename);
end