import fl;

fn void main()
{
    int sx,sy,sw,sh;

    fl::screen_xywh(&sw,&sy,&sw,&sh,0);
    var win @safeinfer=fl::double_window_new(100,100,sw/2,sh/2,"fl_scroll_drawing01");
        var scr @safeinfer=fl::scroll_new(0,0,win.width(),win.height(),null);
        fl::box_new(0,0,sw,sh,null).draw(&draw_cb,null);

    win.resizable(scr);
    win.show();

    fl::run();
}
fn void draw_cb(Fl_Widget* obj,void* data)
{
    Fl_Box* box=(Fl_Box*)obj;
    int x1=box.x();
    int y1=box.y();
    int w=box.width();
    int h=box.height();

    int x2=x1+w-1;
    int y2=y1+h-1;

    fl::set_color_int(Fl_Color.FL_COLOR_WHITE);
    fl::rectf(x1,y1,w,h);
    fl::set_color_int(Fl_Color.FL_COLOR_RED);
    fl::line(x1,y1,x2,y2);
    fl::line(x1,y2,x2,y1);
}