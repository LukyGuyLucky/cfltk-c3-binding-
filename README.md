# cfltk c3 binding c3c
gui ui fltk cfltk c c3 binding c3c lib wrapper

cfltk: https://github.com/MoAlyousef/cfltk

A startup execise.windows 64bit.
handl1.c3
image.c3

compile:
c3c compile-run handle1.c3 -l cfltk2.lib -l gdi32.lib -l gdiplus.lib -l user32.lib -l comctl32.lib -l comdlg32.lib  -l kernel32.lib -l fltk.lib -l fltk_gl.lib -l fltk_images.lib -l fltk_jpeg.lib -l fltk_png.lib -l fltk_z.lib -l winspool.lib -l ole32.lib --wincrt=none
c3c compile-run image.c3 -l cfltk2.lib -l gdi32.lib -l gdiplus.lib -l user32.lib -l comctl32.lib -l comdlg32.lib  -l kernel32.lib -l fltk.lib -l fltk_gl.lib -l fltk_images.lib -l fltk_jpeg.lib -l fltk_png.lib -l fltk_z.lib -l winspool.lib -l ole32.lib --wincrt=none

