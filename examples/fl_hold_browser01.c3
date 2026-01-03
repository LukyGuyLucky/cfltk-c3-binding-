import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,200,100,"fl_hold_browser01");
        var brw @safeinfer=fl::hold_browser_new(10,10,1800,80,null);
        brw.set_callback(&browser_cb,brw);
        brw.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_VERTICALALWAYS);
            for(int i=0;i<9;i++)
            {
                brw.add(string::tformat("item %d",i).zstr_tcopy());
            }
        brw.insert(3,"item 2b");
    win.show();

    fl::run();
}
fn void browser_cb(Fl_Widget* obj,void* data)
{
    Fl_Hold_Browser* brw=(Fl_Hold_Browser*)data;
    int selected=brw.value();
    ZString val=brw.text(selected);
    io::printfn("browserCB: %s",val);
}