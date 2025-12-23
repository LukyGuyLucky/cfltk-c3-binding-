import fl;
import libc;
import std::io;

fn void main()
{
    fl::set_scheme("plastic");

    Fl_Window* win=fl::window_new(100,100,400,200,"013-menubar-simple");
        Fl_Menu_Bar* menu=fl::menu_bar_new(0,0,400,25);
        Callback cb=&menu_callback;
            menu.add("&File/&Open",Fl_Shortcut.FL_SHORTCUT_CTRL|'F',cb,null,0);
            menu.add("&File/&Save",0,cb,null,Fl_MenuFlag.FL_MENUFLAG_MENUDIVIDER);
            menu.add("&File/&Quit", 0, cb,null,0);
            menu.add("&Edit/&Copy", 0, cb,null,0);
            menu.add("&Edit/&Paste", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_MENUDIVIDER);
            menu.add("&Edit/Radio 1", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_RADIO);
            menu.add("&Edit/Radio 2", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_RADIO |Fl_MenuFlag.FL_MENUFLAG_MENUDIVIDER);
            menu.add("&Edit/Toggle 1", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_TOGGLE); 
            menu.add("&Edit/Toggle 2", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_TOGGLE); 

            menu.add("&Edit/Toggle 3", 0, cb, null, Fl_MenuFlag.FL_MENUFLAG_TOGGLE | Fl_MenuFlag.FL_MENUFLAG_VALUE);
            menu.add("&Help/&bing", 0, cb,null,0);
    win.end();
    win.show();

    fl::run();
}   
fn void menu_callback(Fl_Widget* w,void* data)
{
    Fl_Menu_Bar* bar=(Fl_Menu_Bar*)w;
    Fl_Menu_Item* item=(Fl_Menu_Item*)(bar.mvalue());

    char[256] ipath;
    bar.item_pathname((ZString)&ipath,$sizeof(ipath),null);
        io::printfn("callback: you picked %s",item.label());
        io::printfn("item_pathname() is %s",(ZString)ipath[:ipath.len]);

        //if(item.flag() & (Fl_MenuFlag.FL_MENUFLAG_RADIO|Fl_MenuFlag.FL_MENUFLAG_TOGGLE))
        {
           io::printfn("value is %s",item.value()?"on":"off"); 
        }
        if(item.label()=="&bing")
        {
            io::printn(`fl::open_url("http://www.bing.com")`);
        }
        if(item.label()=="&Quit")
        {
            libc::exit(0);
        }    
        
}