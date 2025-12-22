import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,400,200,"004-valuator");
        Fl_Scrollbar* vScrollbar=fl::scrollbar_new(10,50,300,24,"Scrollbar");
        vScrollbar.set_type(Fl_ScrollbarType.FL_SCROLLBARTYPE_HORIZONTAL);
        vScrollbar.set_minimum(0.00);
        vScrollbar.set_maximum(100.00);
        vScrollbar.set_value(50.00);
    win.end();
    win.show();

    fl::run();
}