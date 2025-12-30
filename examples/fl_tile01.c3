import fl;

fn void main()
{
    Fl_Window* win=fl::window_new(100,100,512,512,"drag the lines or the cross in the middle");
    int w=win.width();
    int h=win.height();
    
    Fl_Tile* til=fl::tile_new(0,0,w,h,null);
    til.begin();
        w=w/2;
        h=h/2;

        Fl_Clock* clock=fl::clock_new(0,0,w,h,null);
        clock.set_type(Fl_ClockType.FL_CLOCKTYPE_ROUND);
        clock.set_box(Fl_BoxType.FL_BOXTYPE_DOWNBOX);

        clock=fl::clock_new(w,0,w,h,null);
        clock.set_type(Fl_ClockType.FL_CLOCKTYPE_ROUND);
        clock.set_box(Fl_BoxType.FL_BOXTYPE_DOWNBOX);

        clock=fl::clock_new(0,h,w,h,null);
        clock.set_type(Fl_ClockType.FL_CLOCKTYPE_ROUND);
        clock.set_box(Fl_BoxType.FL_BOXTYPE_DOWNBOX);

        clock=fl::clock_new(w,h,w,h,null);
        clock.set_type(Fl_ClockType.FL_CLOCKTYPE_ROUND);
        clock.set_box(Fl_BoxType.FL_BOXTYPE_DOWNBOX);

    til.end();

    win.resizable(til);

    win.size_range(512,512,1024,1024);
    
    win.show();

    fl::run();
    

}
