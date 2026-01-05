import fl;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,400,40,"Simple Fl_Flex Demo");
        Fl_Flex* flex=fl::flex_new(5,5,win.width()-10,win.height()-10,null);
        flex.set_type(0);// 0-horizontal; 1-vertical
        Fl_Button* b1=fl::button_new(0,0,0,0,"File");
        Fl_Button* b2=fl::button_new(0,0,0,0,"New");
        Fl_Button* b3=fl::button_new(0,0,0,0,"Save");
        Fl_Box* bx=fl::box_new(0,0,0,0,null);
        Fl_Button* eb=fl::button_new(0,0,0,0,"Exit");

        b1.set_callback(&button_cb,null);
        b2.set_callback(&button_cb,null);
        b3.set_callback(&button_cb,null);
        eb.set_callback(&button_cb,null);

        flex.set_pad(15);
        flex.set_margin(40);
        flex.set_size((Fl_Widget*)b1,30);
        flex.set_size((Fl_Widget*)b2,30);
        flex.set_size((Fl_Widget*)b3,30);
        flex.set_size((Fl_Widget*)bx,30);
        flex.set_size((Fl_Widget*)eb,30);
        

        flex.end();
    win.end();

    win.resizable(flex);
    win.size_range(300,240,400,300);

    win.show();

    fl::run();
}

fn void button_cb(Fl_Widget* obj,void* data)
{
    fl::message(string::tformat("The %s button does nothing.",obj.label()).zstr_tcopy());
}