import std::io;
import fl;

fn void main()
{
    fl::set_scheme("plastic");
    var win @safeinfer=fl::window_new(100,100,320,160,"fl_browser03");
        var box @safeinfer=fl::box_new(10,0,140,24,"select an item");
        var brw @safeinfer=fl::browser_new(10,24,280,116,"FL_HOLDBROWSER");
        brw.set_has_scrollbar(Fl_BrowserScrollbar.FL_BROWSERSCROLLBAR_BOTH);
        brw.set_type(Fl_BrowserType.FL_BROWSERTYPE_HOLD);
        brw.set_selection_color(Fl_Color.FL_COLOR_RED);
        brw.set_callback(&browser_cb,box);
        for(int i=0;i<18;i++)
        {
            brw.add(string::tformat("नमस्ते दुनिया!👋🌎! %d",i).zstr_tcopy());
        }
        brw.insert(3,"item 2b");
        brw.select(3);
    win.show();
    fl::run();
}
fn void browser_cb(Fl_Widget* obj,void* data)
{
    Fl_Box* box=(Fl_Box*)data;
    Fl_Browser* brw=(Fl_Browser*)obj;
    int value=brw.value();//selected index
    ZString valuestr=brw.text(value);//selected label text
    box.set_label(valuestr);
    
    //box.redraw();
}