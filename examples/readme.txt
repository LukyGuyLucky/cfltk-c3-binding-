compile buttons002.c3:

c3c compile-run buttons002.c3 fl_enums.c3 fl_funcs.c3 -l cfltk2.lib -l gdi32.lib -l gdiplus.lib -l user32.lib -l comctl32.lib -l comdlg32.lib  -l kernel32.lib -l fltk.lib -l fltk_gl.lib -l fltk_images.lib -l fltk_jpeg.lib -l fltk_png.lib -l fltk_z.lib -l winspool.lib -l ole32.lib --wincrt=none


compile fl_gl01.c3: [opengl32.lib glu32.lib]

c3c compile-run fl_gl01.c3 fl_enums.c3 fl_funcs.c3 fl_dialog.c3 fl_browser.c3 fl_printer.c3 fl_gl.c3 -l fltk_gl.lib  -l opengl32.lib -l glu32.lib -l cfltk2.lib -l gdi32.lib -l gdiplus.lib -l user32.lib -l comctl32.lib -l comdlg32.lib  -l kernel32.lib -l fltk.lib -l fltk_gl.lib -l fltk_images.lib -l fltk_jpeg.lib -l fltk_png.lib -l fltk_z.lib -l winspool.lib -l ole32.lib --wincrt=none
