import fl;
import std::io;


fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,320,100,"Fl_Check_BrowserEx01");
        Fl_Check_Browser* cbr=fl::check_browser_new(10,10,320-20,100-20,null);
        cbr.handle(&check_browser_cb,null);
        cbr.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_VERTICALALWAYS);
        cbr.set_text_color(fl::rgb_color(255,128,128));
        cbr.add("Item 1",0);
        cbr.add("Item 2",1);
        cbr.add("Item 3",2);
        cbr.add("Item 4",3);
        cbr.add("Item 5 Привет, мир!नमस्ते दुनिया!👋🌎!",4);

    win.resizable(cbr);
    win.show();

    fl::run();
}

fn int check_browser_cb(Fl_Widget* obj,int e,void* data)
{
    Fl_Check_Browser* cbr=(Fl_Check_Browser*)obj;
    Fl_Event event=(Fl_Event)e;
    if(event==Fl_Event.FL_EVENT_RELEASED)
    {
        io::printn("HandleCB: FL_EVENT_RELEASE");
        int nItems=cbr.nitems();
    
        if(nItems)
        {
            for(int item=1;item<=nItems;item++)
            {
                if(cbr.checked(item))
                {
                    io::printn("[*]");
                }else
                {
                    io::printn("[]");
                }
                io::printn(cbr.text(item));
            }
        }
    }
    return 1;
}