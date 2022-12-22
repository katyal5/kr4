Program Grafik;
uses GraphABC;
Var i,x0,y0,x1,y1,k: integer;
    x,y,a,b,n,e: real;
Begin
  setWindowSize(1200,800);
   x0:=600; y0:=700; k:=30;
   line(x0,20,x0,1280);   line(20,y0,1170,y0);
   line(x0,20,x0-10,30);  line(x0,20,x0+10,30);
   line(1180,y0,1170,y0-10);  line(1180,y0,1170,y0+10);
   for i:=-19 to 19 do
       begin
       line(x0+(i*k),y0-10,x0+(i*k),y0+10);
       textout(x0+(i*k),y0+10,inttostr(i));
       end;
   for i:=-22 to 20 do
       begin
       line(x0-10,y0+(i*k),x0+10,y0+(i*k));
       if i<>0 then textout(x0+10,y0+(i*k),inttostr(-i));
       end;
         setPenColor(clRed);
   readln(a);
   readln(b);
   x:=a;
   While x<=b do
   begin
     y:=2*x*x*x-2*x*x+2*x+10;
     x1:=trunc(x0+x*k);  y1:=trunc(y0-y*k);
     setpixel(x1,y1,clRed);
     x:=x+0.001;
     if x1 mod 3=0 then line(x1,y1,x1,699);
   end;
End.