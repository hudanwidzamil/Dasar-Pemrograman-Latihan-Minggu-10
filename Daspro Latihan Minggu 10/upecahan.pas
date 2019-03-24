(*NIM/NAMA: 16518249/Muhamad Hudan Widzamil*)
(*Tanggal : 23 Maret 2019*)



unit upecahan;
 
interface
	type
		pecahan = record     
			n,d:integer;
		end;
    	
	function IsPecahanValid(var n,d:integer):boolean;
	
	procedure TulisPecahan(var P:pecahan);
	
	function IsLebihKecil(var P1,P2:pecahan):boolean;
	
	function Selisih(var P1,P2:pecahan):pecahan;
	 
implementation
	function IsPecahanValid(var n,d:integer):boolean;
	begin
		if (n>=0)and(d>0) then
		begin
			IsPecahanValid:=True;
		end else
		begin
			IsPecahanValid:=False;
		end;
	end;
	
	procedure TulisPecahan(var P:pecahan);
	begin
		write(P.n);write('/');write(P.d);
	end;
	
	function IsLebihKecil(var P1,P2:pecahan):boolean;
	begin
		if ((P1.n*P2.d)<(P2.n*P1.d)) then
		begin
			IsLebihKecil:=True;
		end else
		begin
			IsLebihKecil:=False;
		end;
	end;

	function Selisih(var P1,P2:pecahan):pecahan;
	begin
		Selisih.n:=(P1.n*P2.d)-(P2.n*P1.d);
		Selisih.d:=P1.d*P2.d;	
	end;
end.


