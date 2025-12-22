import fl;

Fl_Window* win;

fn void main()
{
    win=fl::window_new(100,100,400,300,null);
    Fl_Box* box=fl::box_new(0,0,400,200,null);
    Fl_Button* btn=fl::button_new(160,210,80,40,"&OK");
    win.end();
    win.show();
    
    box.handle((Cb)&box_cb,null);
    btn.handle((Cb)&cb,null);
    
    fl::run();
}

fn int cb(Fl_Widget* w,int e,void* data)
{
    switch(e)
    {
        case Fl_Event.FL_EVENT_PUSH:
            fl::handle(31,win);
            return 1;
        default:
            return 0;
    }
}

fn int box_cb(Fl_Widget* w,int e,void* data)
{
    switch(e)
    {
        case 31:
            static int i=0;
            ((Fl_Box*)w).set_label(string::tformat("Push %s",++i).zstr_tcopy());
            return 1;
        default:
            return 0;
    }
}