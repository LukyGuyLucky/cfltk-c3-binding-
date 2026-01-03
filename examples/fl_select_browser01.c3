import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,320,240,"Fl_select_browser01");
        var box @safeinfer=fl::box_new(100,50,150,24,"select an item");
        var sbr @safeinfer=fl::select_browser_new(10,10,80,100,"?");
            sbr.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_VERTICALALWAYS);
            sbr.set_callback(&browser_cb,sbr);

            for(int i=0;i<9;i++)
            {
                sbr.add(string::tformat("item %d",i).zstr_tcopy());
            }
            sbr.insert(6,"नमस्ते दुनिया!👋🌎!");
    win.show();

    fl::run();
}

fn void browser_cb(Fl_Widget* obj,void* data)
{
    Fl_Select_Browser* sbr=(Fl_Select_Browser*)obj;
    int selected=sbr.value();
    ZString val=sbr.text(selected);

    sbr.set_label(val);
}