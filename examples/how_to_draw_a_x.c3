import fl;

fn void main()
{
    fl::register_images();
    var win @safeinfer=fl::double_window_new(0,0,300,200,"Draw X");
    win.draw(&draw_cb,null);    
    win.resizable(win);
    win.show();
    win.redraw();
    fl::run();
}
fn void draw_cb(Fl_Widget* obj,void* data)
{
    Fl_Window* win=(Fl_Window*)obj;
    fl::set_color_int(Fl_Color.FL_COLOR_WHITE);
    fl::rectf(win.x(),win.y()-30,win.width()-10,win.height()-10);
    
    fl::set_color_int(Fl_Color.FL_COLOR_BLACK);
    int x1=win.x()-3;
    int y1=win.y()-27;
    int x2=win.x()+win.width()-14;
    int y2=win.y()+win.height()-44;

    fl::line(x1,y1,x2,y2);
    fl::line(x1,y2,x2,y1);
}