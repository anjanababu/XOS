decl
	integer i,j,k,fd,r,c,cc;
	string fname;
enddecl
integer main(){
	r = Create("2.dat");
	fd = Open("2.dat");
	i = 1;
	while(i<=10)do
		r = Write(fd,i);
		i = i+1;
	endwhile;
	c = Fork();
       	if(c==-2)then
		cc = Fork();
		if(cc==-2)then
			i = 200;
			while(i<=300)do
				r = Write(fd,i);
				i = i + 1;
			endwhile;
		else
			k = 100;
			while(k<=150)do
				r = Write(fd,k);
				k = k + 1;
			endwhile;
			r = Wait(cc);
			r = Close(fd);
                endif;
	else
		j = 50;
		while(j<=70)do
			r = Write(fd,j);
			j = j + 1;
		endwhile;
		r = Wait(c);
	endif;
	return 0;
}
