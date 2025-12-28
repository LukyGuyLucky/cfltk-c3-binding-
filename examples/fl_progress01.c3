import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,320,35,"fl_progress01");
        Fl_Progress* prg=fl::progress_new(5,5,310,25,null);
    win.show();
    fl::add_timeout(1.0,&timeoutHandler,prg);

    fl::run();
}

fn void timeoutHandler(void* obj)
{
    Fl_Progress* prg=(Fl_Progress*)obj;
    double value=prg.value();

    if(value<100)
    {
        value+=1;
        prg.set_value(value);

        String vstr=string::tformat("%d%%",value);
        prg.set_label(vstr.zstr_tcopy());
        prg.set_selection_color(fl::rgb_color((char)(200-value*2),(char)value*2,0));
        fl::repeat_timeout(1.0/20,&timeoutHandler,obj);


    }
}