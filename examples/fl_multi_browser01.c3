import std::io;
import fl;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,320,100,"fl_multi_browser01");
        var brw @safeinfer=fl::multi_browser_new(10,10,320-20,100-20,null);
        brw.set_has_scrollbar(Fl_ScrollType.FL_SCROLLTYPE_VERTICALALWAYS);
        //brw.set_type(Fl_BrowserType.FL_BROWSERTYPE_MULTI);
        brw.set_selection_color(Fl_Color.FL_COLOR_BLUE);

        for(int i=0;i<9;i++)
        {
            brw.add(string::tformat("item %d",i).zstr_tcopy());
        }
        brw.insert(3,"item 2b");

        brw.select(1);
        brw.select(3);
        brw.select(5);

        int nItems=brw.size();
        if(nItems)
        {
            for(int item=1;item<=nItems;item++)
            {
                io::printn(brw.text(item));
            }
        }
    win.show();
    fl::run();
}