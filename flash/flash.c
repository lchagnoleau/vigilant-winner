#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAXSIZE  4096
#define OUTPUT_TMP_FILE "tmp.bin"

typedef struct {
	unsigned short size;
	unsigned char raw[MAXSIZE];
} duckSruct_t;

int main (int argc, char *argv[])
{
	FILE *fptr_read = NULL, *fptr_write = NULL;
	duckSruct_t *memoryMap = NULL;
	int ret = 0, index = 0, nbValRead = 0;

	char error_flag = 0;
	char cmd[256] = {0};
	
	memoryMap = malloc(sizeof(duckSruct_t));
	
	if (argc != 2)
		printf("Usage:\n%s inputFile.bin\n", argv[0]);
	
	fptr_read = fopen(argv[1],"rb");
	if (fptr_read == NULL){
		printf("Error! opening file\n");
		error_flag = 1;
	}	
	fptr_write = fopen(OUTPUT_TMP_FILE,"w+");
	if (fptr_write == NULL){
		printf("Error! opening file\n");
		error_flag = 1;
	}
	
	if(!error_flag)
	{
		memoryMap->size = fread(memoryMap->raw, sizeof(*memoryMap->raw), MAXSIZE, fptr_read);
		fwrite(memoryMap, sizeof(unsigned char), memoryMap->size + sizeof(memoryMap->size), fptr_write);
	}

	if (memoryMap != NULL)
		free(memoryMap);
	if (fptr_read != NULL)
		fclose(fptr_read);
	if (fptr_write != NULL)
		fclose(fptr_write);

	if(!error_flag)
	{
		strcpy(cmd, "dfu-util -d 0483:df11 -D ");
		strcat(cmd, OUTPUT_TMP_FILE);
		strcat(cmd, " -a 0 -i 0 -s 0x08003000:leave");
		system(cmd);

		remove(OUTPUT_TMP_FILE);
	}

	return ret;
}

