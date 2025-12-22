import fl;
import std::io;

fn void main()
{
    fl::init_all();
    fl::register_images();
    fl::lock();
    Fl_Window* win=fl::window_new(100,100,400,300,null);
    Fl_Button* btn=fl::button_new(160,210,80,40,"Click Me");
    btn.set_deletion_callback((Cb)&dcb,btn);
    win.end();
    win.show();
    btn.set_callback((Cb)&cb,null);
    
    fl::run();
}

fn void cb(Fl_Widget* w,void* data)
{
    Fl_Group* parent=w.parent();
    w.delete();
    parent.redraw();
}
fn void dcb(Fl_Widget* w,void* data)
{
    io::printn("Deleted.");
}