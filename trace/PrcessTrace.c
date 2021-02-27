#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void swap(int *a, int *b){
    int temp = *a;
    *a = *b;
    *b = temp;
}

int sort (int index[], int counter[], int n){
    int i, j, min_idx;
    // One by one move boundary of unsorted subarray
    for (i = 0; i < n-1; i++)
    {
        // Find the minimum element in unsorted array
        min_idx = i;
        for (j = i+1; j < n; j++)
            if (index[j] < index[min_idx])
                min_idx = j;

        // Swap the found minimum element with the first element
        swap(&index[min_idx], &index[i]);
        swap(&counter[min_idx], &counter[i]);
    }
}

int main(int argc, char *argv[]) {
    // Quit if wrong program arguments
    if (argc != 2) {
        printf("%i\n", argc);
        printf("Correct usage is ./main.out <File path>");
    }
    // Input file, and output file
    FILE *traceFile;
    FILE *outputFile;

    char buffer[255];

    // Exit if fails to open input or output file.
    if ((traceFile = fopen(argv[1], "r")) == NULL) {
        printf("Error opening trace file");
        exit(1);
    }
    if ((outputFile = fopen("cc_out.din", "w")) == NULL) {
        printf("Error opening output file");
        exit(1);
    }

    // Number of newlines the input file has
    int lines = 0;

    //Temporary character var to count newlines
    char c;
    for (c = getc(traceFile); c != EOF; c = getc(traceFile)) {
        if (c == '\n') {
            lines++;
        }
    }
    //Close file since we read through it once
    fclose(traceFile);
    //Reopen the file to process it
    if ((traceFile = fopen(argv[1], "r")) == NULL) {
        printf("Error opening trace file");
        exit(1);
    }

    // Size counter tells us how many unique addresses we have discovered
    int size = 0;
    // Counter array counts the number of times we've seen a unique address. Its index matches up with the index array.
    int *counter = malloc(lines * sizeof counter);
    // The index array stores the unique addresses. Its purpose is to connect to the counter array so we can count how many times
    // we've seen a certain address. Its initial size is the number of lines in the file (in case every line contained a unique address).
    int *index = malloc(lines * sizeof index);
    if (!index || !counter) {
        printf("Failed to allocate memory.");
        exit(1);
    }
    //Iterate over the file line by line, use a line buffer of 255 characters.
    while (fgets(buffer, 255, traceFile)) {
        // *token is the first token before the space (a single digit number). We don't care about this.
        char *token = strtok(buffer, " ");
        // *token2 contains the address we're looking for
        char *token2 = strtok(NULL, " ");
        // Convert the address to an integer
        int id = atoi(token2);
        // Simple boolean var to remember whether we found this address already in our index array
        int found = 0;
        // Iterate over every entry in our index array
        for (int i = 0; i < size; i++) {
            // Check if the address already exists. If it does increment the value in the corresponding counter[] element
            // As well as flag it found. This lets us know whether to initialize or increment.
            if (index[i] == id) {
                counter[i]++;
                found = 1;
            }
        }
        if (found == 0) {
            // Set the address in the index at the end of the array.
            index[size] = id;
            // Start off the number of occurrences found at 1
            counter[size] = 1;
            // Make sure to keep track of the size of the array
            size++;
        }
    }
    // Sort the index array, making sure to sort the counter array as well so the indexes stay lined up.
    sort(index, counter, size);
    // Print out the results to the file
    for (int i = 0; i < size; i++) {
        fprintf(outputFile, "%4d %d\n", counter[i], index[i]);
    }
    // Print out how many unique addresses there were.
    printf("Size: %d\n", size);

    //Cleanup
    fclose(traceFile);
    fclose(outputFile);
    free(index);
    free(counter);
    return 0;
}


