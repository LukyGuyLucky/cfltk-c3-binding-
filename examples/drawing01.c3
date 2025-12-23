import fl;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"drawing01-resize me!");
    win.draw(&draw_cb,null);
    win.resizable((Fl_Widget*)win);
    win.show();

    fl::run();
}
fn int draw_cb(Fl_Widget* obj,int e,void* data)
{
    int x,y;
    int w=obj.width();
    int h=obj.height();
    int x2=x+w;
    int y2=y+h;

    fl::push_clip(x,y,w,h);
    fl::set_color_int(Fl_Color.FL_COLOR_WHITE);
    fl::rect(x,y,w,h);
    fl::set_color_int(Fl_Color.FL_COLOR_RED);

    for(int i=x;i<x2;i+=10)
    {
        fl::yxline(i,y,h);
    }

    fl::set_color_int(Fl_Color.FL_COLOR_BLUE);

    for(int i=y;i<y2;i+=10)
    {
        fl::xyline(x,i,w);
    }

    fl::pop_clip();
    
    return 1;
}