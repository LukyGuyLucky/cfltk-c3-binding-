import fl;
import libc;

fn void main()
{
    //fl::init_all();
    
    Fl_Gl_Window* win=fl::gl_window_new(100,100,500,500,"fl_gl02");
    win.show();

    for(;;)
    {
        fl::wait_for(0.5);
        if(win.shown()==0) libc::exit(0);

        win.drawMe();
    }
}
fn void Fl_Gl_Window.drawMe(&win)
{
    static long gfxPrimitive=0;

    win.make_current();

    int x=10;
    int y=10;
    int w=win.width()-20;
    int h=win.height()-20;

    fl::push_clip(x,y,w,h);

    fl::rect_with_color(x,y,w,h,Fl_Color.FL_COLOR_WHITE);

    for(int i=0;i<10;i++)
    {
        fl::set_color_rgb((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255);
        switch(gfxPrimitive)
        {
            case 0:fl::point(libc::rand()/w,libc::rand()%h);
            case 1:fl::line(libc::rand()%w,libc::rand()%h,libc::rand()%w,libc::rand()%h);
            case 2:fl::rectf(libc::rand()%w,libc::rand()%h,libc::rand()%w,libc::rand()%h);
            case 3:
                int r=libc::rand()%h/2;
                fl::arc(libc::rand()%w,libc::rand()%w,r,r,0,360);
            case 4:fl::rectf(libc::rand()%w,libc::rand()%h,libc::rand()%w,libc::rand()%h);
            case 5:
                int bt=1+libc::rand()%15;
                fl::draw_box(bt,libc::rand()%w,libc::rand()%h,libc::rand()%w,libc::rand()%h,
                        fl::rgb_color((char)libc::rand()%255,(char)libc::rand()%255,(char)libc::rand()%255));
            case 6:fl::arc(libc::rand()%w,libc::rand()%h,libc::rand()%w,libc::rand()%h,0,360);
        }
    }
    fl::pop_clip();
    gfxPrimitive=(gfxPrimitive+1) %7;
}