import fl;
import libc;

fn void main()
{
    var win @safeinfer=fl::window_new(fl::w()/2-320,fl::h()/2-240,640,480,"main window close me");
        win.set_callback(&close_cb,null);
        
        for(int i=0;i<20;i++)
        {
            int w=160+libc::rand()%320;
            int h=w/16*9;
            ZString title=string::tformat("Form %d",i).zstr_tcopy();

            fl::window_new(libc::rand()%(fl::w()-w),libc::rand()%(fl::h()-h),w,h,title)
                .show();
        }
    win.show();

    fl::run();
}

fn void close_cb(Fl_Widget* obj,void* data)
{
    var win @safeinfer=(Fl_Window*)fl::first_window();

    while(win)
    {
        win.hide();
        win=fl::first_window();

        fl::wait_for(0.2);
    }
}