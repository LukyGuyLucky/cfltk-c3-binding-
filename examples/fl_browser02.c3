import std::io;
import fl;

fn void main()
{
    fl::set_scheme("plastic");

    var win @safeinfer=fl::window_new(100,100,320,160,"fl_browser02");
        var box @safeinfer=fl::box_new(10,0,140,24,"select an item");
        var brw @safeinfer=fl::browser_new(10,24,280,116,"FL_HOLDBROWSER");
        brw.set_type(Fl_BrowserType.FL_BROWSERTYPE_HOLD);
        brw.set_callback(&browser_cb,box);

        for(int item=0;item<10;item++)
        {
            brw.add(string::tformat("नमस्ते दुनिया!👋🌎! %d",item).zstr_tcopy());
        }
    win.show();

    fl::run();
}
fn void browser_cb(Fl_Widget* obj,void* data)
{
    Fl_Browser* brw=(Fl_Browser*)obj;
    Fl_Box* box=(Fl_Box*)data;
    int value=brw.value();
    io::printfn("value=%d",value);
    int position=brw.position();
    io::printfn("position=%d",position);
    int selected=brw.selected(position);
    io::printfn("selected=%d",selected);
    ZString filestr=brw.text(value);

    box.set_label(filestr);

}