integer main() {
	string input;
	integer a, fd, i, b, j, s;
	fd = Open("pqra");
	while(i<150)do
		a = Read(fd,input);
		print(input);
		i = i + 1;
	endwhile;
	a = Close(fd);
	
	return (0);	
}
