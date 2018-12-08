
function out = zs_lut(BI)
tic
even=makelut('iter_even',3);
odd=makelut('iter_odd',3);
done=0;
N=2;
last=BI;
previous=bwlookup(last, odd);
current=bwlookup(previous, even);
while (done==0)
    if all(current(:)==last(:)),
        done=1;
    end;
    N=N+1;
    last=previous;
    previous=current;
    if mod(N,2)==0
        current=bwlookup(current, even);
    else
        current=bwlookup(current, odd);
    end;
end
toc
out=imshow(current);
