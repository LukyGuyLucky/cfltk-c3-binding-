import fl;
import libc;
fn void main()
{
    fl::set_scheme("plalstic");
    Fl_Window* win=fl::window_new(100,100,320,200,"What a shinny Window :-)");
    Fl_Button* btn=fl::button_new(10,10,120,32,"Click me");
    btn.set_callback((Cb)&cb,null);
    
    
    win.end();
    win.show();
    
    fl::run();
}

fn int cb(Fl_Widget* w,int e,void* data)
{
    static bool firstClick=true;
    
    if(firstClick)
    {
        w.set_label("Do it again");
        firstClick=false;
    }
    fl::beep(0);
    w.resize(10,10,100,100);
    w.parent().redraw();
    return 0;
}