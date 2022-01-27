constant = 0; %Fix these later
staticWeight = 0; %Fix these later
function w = find_weight (row) %Function to be implemented when data set is available 
    w = "Fill This In";
end
function c = compare(thisWeight)
    diff = abs(staticWeight - thisWeight);
    if diff <= constant
        c = 1;
    else
        c = 0;
    end 
end
function f = find_face(data)
    sm = NaN;
    for i = 1:size(data, 1)
        c = compare(find_weight(i));
        if c == 1
           if isnan(sm) %This probably needs to be fixed...
               sm = i;
           else
               if find_weight(sm) > find_weight(i)
                   sm = i;
               end
           end
        end
    end
    if isnan(sm)
        add_to_data(face) %Fix this later
    end 
    f = sm;
end
