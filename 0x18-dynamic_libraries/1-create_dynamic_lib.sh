#!/bin/bash
for file in *.c; do
    if [ -f "$file" ]; then
        gcc -c -fPIC "$file" -o "${file%.c}.o"
    fi
done

# Create the dynamic library liball.so from the object files
gcc -shared -o liball.so *.o

# Clean up by removing the object files
rm -f *.o