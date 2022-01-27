constant = 0; %Fix these later
staticWeight = 0; %Fix these later
function w = find_weight (row) %Function to be implemented when data set is available 
    w = "Fill This In";
end
function c = compare(thisWeight)
    diff = abs(weight - thisWeight);
    if diff <= constant
        c = True;
    else
        c = False;
    end 
end
function f = find_face(data)
    sm = 'empty';
    for i = 1:size(data, 1)
        c = compare(find_weight(i));
        if c == True
           if sm == 'empty' %This probably needs to be fixed...
               sm = i;
           else
               if find_weight(sm) > find_weight(i)
                   sm = i;
               end
           end
        end
    end
    f = sm;
end
