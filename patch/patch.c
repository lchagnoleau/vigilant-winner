#include <stdio.h>
#include <stdlib.h>

#define MAXSIZE  4096

typedef struct {
	unsigned short size;
	unsigned char raw[MAXSIZE];
} duckSruct_t;

int main (int argc, char *argv[])
{
	FILE *fptr_read = NULL, *fptr_write = NULL;
	duckSruct_t *memoryMap = NULL;
	int ret = 0, index = 0, nbValRead = 0;
	
	memoryMap = malloc(sizeof(duckSruct_t));
	
	if (argc != 3)
		printf("Usage:\n%s inputFile.bin outputFile.bin\n", argv[0]);
	
	fptr_read = fopen(argv[1],"rb");
	if (fptr_read == NULL){
		printf("Error! opening file");
		goto errors;
	}	
	fptr_write = fopen(argv[2],"w+");
	if (fptr_write == NULL){
		printf("Error! opening file");
		goto errors;
	}
	
	memoryMap->size = fread(memoryMap->raw, sizeof(*memoryMap->raw), MAXSIZE, fptr_read);
	fwrite(memoryMap, sizeof(unsigned char), memoryMap->size + sizeof(memoryMap->size), fptr_write);
	
errors:
	if (memoryMap != NULL)
		free(memoryMap);
	if (fptr_read != NULL)
		fclose(fptr_read);
	if (fptr_write != NULL)
		fclose(fptr_write);
	return ret;
}

