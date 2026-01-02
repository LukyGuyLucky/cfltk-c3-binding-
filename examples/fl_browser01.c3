import std::io;

import fl;

fn void main()
{
    fl::set_scheme("plastic");

    Fl_Window* win=fl::window_new(100,100,320,100,"Fl_browser01");
        Fl_Browser* brw=fl::browser_new(10,10,win.width()-20,win.heigh()-20,null);
        brw.set_color(fl::rgb_color(128,128,255));
        for(int i=0;i<5;i++)
        {
            brw.add(string::tformat("item %d",i),i);
        }
        brw.insert(3,"item 2b");
        brw.select(3);

        for(int item=1;item<=brw.size();item++)
        {
            io::printn(brw.text(item));
        }
    
    win.show();
    fl::run();
}