import std::io;
import fl;

fn void main()
{
    fl::set_scheme("plastic");
    var win @safeinfer=fl::window_new(100,100,320,160,"fl_browser04");
        var box @safeinfer=fl::box_new(10,0,280,24,"select an item");
        var brw @safeinfer=fl::browser_new(10,24,280,116,"FL_HOLDBROWSER");
        brw.set_type(Fl_BrowserType.FL_BROWSERTYPE_HOLD);
        brw.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_BOTH);
        brw.set_callback(&browser_cb,box);
        brw.set_selection_color(Fl_Color.FL_COLOR_RED);

        for(int i=0;i<18;i++)
        {
            brw.add(string::tformat("....नमस्ते दुनिया!👋🌎! %d .........",i).zstr_tcopy());
        }

    win.show();
    fl::run();
}

fn void browser_cb(Fl_Widget* obj,void* data)
{
    Fl_Browser* brw=(Fl_Browser*)obj;
    Fl_Box* box=(Fl_Box*)data;

    int selectedIndex=brw.value();
    ZString selectedText=brw.text(selectedIndex);

    box.set_label(selectedText);

}