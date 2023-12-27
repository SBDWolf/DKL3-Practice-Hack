IF NOT EXIST output_rom mkdir output_rom
del /q output_rom
copy source_rom\source.gbc output_rom\output.gbc
rgbds-0.6.1\rgbasm.exe -o output_rom\dkl3.o src\main.asm
rgbds-0.6.1\rgblink -O source_rom\source.gbc -o output_rom\output.gbc output_rom\dkl3.o
del output_rom\dkl3.o