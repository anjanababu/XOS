decl
	integer r1,r2,r3,i,p,x,r,y,k,j;
enddecl
integer main(){
	r1 = Fork();
	if(r1==-2)then		//process 1
		r2 = Fork();
		if(r2==-2)then
			r3 = Fork();
		endif;
	endif;

	p = Getpid();
	x = 100*p;
 
	i = 1;
	while(i<=20)do
		print(x+i);
		i = i + 1;

		k = 1;
		while(k<40)do
			k = k + 3*p + 1;
		endwhile;
	endwhile;

	j = p+1;
	while(j<4)do	
		r = Wait(j);
		j = j+1;

		k = 1;
		while(k<40)do
			k = k + 3*p + 1;
		endwhile;
	endwhile;	
		
 	i = 21;
	while(i<=60)do
		print(x+i);
		i = i + 1;
		
		k = 1;
		while(k<40)do
			k = k + 3*p + 1;
		endwhile;
	endwhile;

	r = Signal();

	i = 61;
	while(i<100)do
		print(x+i);
		i = i + 1;

		k = 1;
		while(k<40)do
			k = k + 3*p + 1;
		endwhile;
	endwhile;
	return 0;
}
