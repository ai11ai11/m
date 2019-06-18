local mix={a}

function mix.set()
	
est_hod = false

for i=3,12 do
   for j=3,9 do
      if a[i][j]==a[i][j+1] and a[i][j]==a[i][j+3] then
	est_hod = true
      end
   end
end


for i=3,11 do
   for j=3,10 do
      if a[i][j]==a[i][j+1] and a[i][j]==a[i+1][j+2] then
	est_hod = true
      end
   end
end


for i=4,11 do
   for j=3,10 do
      if a[i][j]==a[i][j+1] and a[i][j]==a[i-1][j+2] then
	est_hod = true
      end
   end
end


for i=3,12 do
   for j=12,6,-1 do
      if a[i][j]==a[i][j-1] and a[i][j]==a[i][j-3] then
	est_hod = true
      end
   end
end


for i=3,11 do
   for j=12,5,-1 do
      if a[i][j]==a[i][j-1] and a[i][j]==a[i+1][j-3] then
	est_hod = true
      end
   end
end


for i=4,12 do
   for j=12,5,-1 do
      if a[i][j]==a[i][j-1] and a[i][j]==a[i-1][j-2] then
	est_hod = true
      end
   end
end


for i=3,9 do
   for j=3,12 do
      if a[i][j]==a[i+1][j] and a[i][j]==a[i+3][j] then
	est_hod = true
      end
   end
end


for i=3,10 do
   for j=3,11 do
      if a[i][j]==a[i+1][j] and a[i][j]==a[i+2][j+1] then
	est_hod = true
      end
   end
end


for i=3,10 do
   for j=4,12 do
      if a[i][j]==a[i+1][j] and a[i][j]==a[i+2][j-1] then
	est_hod = true
      end
   end
end


for i=12,6,-1 do
   for j=3,12 do
      if a[i][j]==a[i-1][j] and a[i][j]==a[i-3][j] then
	est_hod = true
      end
   end
end


for i=12,6,-1 do
   for j=3,11 do
      if a[i][j]==a[i-1][j] and a[i][j]==a[i-2][j+1] then
	est_hod = true
      end
   end
end


for i=12,6,-1 do
   for j=4,12 do
      if a[i][j]==a[i-1][j] and a[i][j]==a[i-2][j-1] then
	est_hod = true
      end
   end
end


if est_hod == false then
   print("Mix, Dude!")
   require("init").set() 
end


end
return mix