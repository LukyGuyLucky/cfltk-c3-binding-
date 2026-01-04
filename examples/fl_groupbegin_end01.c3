import fl;
import libc;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,640,480,"fl_groupbegin_end01");
    add_child_cb(null,win);
    win.show();

    fl::run();
}

fn void add_child_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* parent=(Fl_Window*)data;
    parent.begin();
        var btn @safeinfer=fl::button_new(libc::rand()%(parent.width()-64),libc::rand()%(parent.height()-24),64,24,"add child");
        btn.set_callback(&add_child_cb,parent);
    parent.end();

    parent.redraw();
}