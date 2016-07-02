# fractal images

################################################################################
import fractal
pixels = fractal.mandelbrot(448, 256)
print(pixels)

import bmp
bmp.write_grayscale('mandel.bmp', pixels)

################################################################################
