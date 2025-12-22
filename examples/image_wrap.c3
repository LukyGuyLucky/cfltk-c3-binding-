import fl;

const ZString COMPILE_CMD="c3c compile-run image_wrap.c3 fl_enums.c3 fl_funcs.c3 "
	    "-l cfltk2.lib -l gdi32.lib -l gdiplus.lib -l user32.lib "
	    "-l comctl32.lib -l comdlg32.lib  -l kernel32.lib -l fltk.lib "
	    "-l fltk_gl.lib -l fltk_images.lib -l fltk_jpeg.lib "
	    "-l fltk_png.lib -l fltk_z.lib -l winspool.lib "
	    "-l ole32.lib --wincrt=none";
fn void main()
{
    fl::register_images();
    Fl_Window* win=fl::window_new(100,100,400,300,null);
    Fl_Box* box=fl::box_new(0,0,400,300,null);

    win.end();
    win.show();
    win.set_color(Fl_Color.FL_COLOR_WHITE);
    
    Fl_PNG_Image* img=fl::png_image_new("img.png");
    img.scale(400,300,true,true);
    box.set_image(img);

    fl::run();
}

fn void cb(Fl_Widget* w,int e,void* data)
{
    w.set_label("Works");
}