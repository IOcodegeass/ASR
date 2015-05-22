#include <err.h>	
#include <stdio.h>	
#include<stdlib.h>
int
main()
{
	FILE *f;
	size_t len;
	char *line;
 
	f = fopen("out1.txt", "r");
	if (f == NULL)
		err(1, "foobar.txt");

	while (line = fgetln(f, &len)) {
		fputs("LINE: ", stdout);
		fwrite(line, len, 1, stdout);
	}
	if (!feof(f))
		err(1, "fgetln");
 
	return 0;
}
