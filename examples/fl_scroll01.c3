import fl;
import libc;
import std::io;

fn void main()
{
    fl::set_scheme("plastic");

    var win @safeinfer=fl::double_window_new(100,100,640,480,"Fl_scroll01");
        var scr @safeinfer=fl::scroll_new(10,10,win.width()-20,win.height()-20,null);

        for(int y=0;y<50;y++)
        {
            for(int x=0;x<50;x++)
            {
                ZString label=string::tformat("[%d]",1+y*40+x).zstr_tcopy();
                var btn @safeinfer=fl::button_new(x*50,y*50,45,45,null);
                btn.set_label(label);
                btn.set_color(fl::rgb_color((char)libc::rand()%255,
                                            (char)libc::rand()%255,
                                            (char)libc::rand()%255)
                );
                btn.set_selection_color(fl::rgb_color((char)libc::rand()%255,
                                                      (char)libc::rand()%255,
                                                      (char)libc::rand()%255)
                );
                btn.set_callback(&click_cb,null);
            }
        }
        win.resizable(scr);
        win.show();

        fl::run();
}

fn void click_cb(Fl_Widget* obj,void* data)
{
    Fl_Button* btn=(Fl_Button*)obj;
    char r,g,b;
    char sr,sg,sb;
    fl::get_color_rgb(btn.color(),&r,&g,&b);
    fl::get_color_rgb(btn.selection_color(),&sr,&sg,&sb);
    io::printfn("%s been clicked,its color: {%s,%s,%s}\tselection color: {%s,%s,%s}",
        btn.label(),r,g,b,sr,sg,sb);
}
