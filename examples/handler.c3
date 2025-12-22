import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,400,300,null);
    Fl_Box* box=fl::box_new(0,0,400,200,null);
    Fl_Button* btn=fl::button_new(160,210,80,40,"&Click me");
    
    win.end();
    win.show();
    btn.handle((Cb)&cb,box);
    
    fl::run();
}
fn int cb(Fl_Widget* w,int e,void* data)
{
    switch(e)
    {
        case Fl_Event.FL_EVENT_PUSH:
            ((Fl_Box*)data).set_label("नमस्ते दुनिया!👋🌎!");
            return 1;
        default:
            return 0;
    }
}