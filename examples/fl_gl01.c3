import fl;
import libc;

fn void main()
{
    fl::init_all();
    
    Fl_Gl_Window* win=fl::gl_window_new(100,100,500,500,"fl_gl01");
    win.begin();

        Fl_Button* btn=fl::button_new(10,10,120,24,"Hello");
        btn.set_box(Fl_BoxType.FL_BOXTYPE_BORDERBOX);
        btn.set_color(Fl_Color.FL_COLOR_MAGENTA);

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

    win.make_current();
    //win.set_mode(Fl_Mode.FL_MODE_OPENGL3);
    //if(!win.valid()) win.set_valid(1);
    int w=win.width();
    int h=win.height();
    int deg=100;

    fl::push_clip(0,0,w,h);
    fl::rectf_with_rgb(0,0,w,h,
            (char)libc::rand()%255,
            (char)libc::rand()%255,
            (char)libc::rand()%255);

    for(int font=0;font<15;font++)
    {
        int size=10+libc::rand()%30;
        fl::set_draw_font(font,size);

        for(int i=0;i<2;i++)
        {
            fl::set_color_rgb((char)libc::rand()%255,
                              (char)libc::rand()%255,
                              (char)libc::rand()%255);
            int x=libc::rand()%w;
            int y=libc::rand()%h;

            if(i&1)
            {
                fl::draw("DrawStr() नमस्ते दुनिया!👋🌎!",x,y);
            }
            else
            {
                fl::draw_text_angled(deg,"DrawStr() नमस्ते दुनिया!👋🌎!",x,y);
                deg+=5;
            }
        }
        fl::pop_clip();
    }
    //win.flush();
    //win.super_draw(1);
    //win.redraw();
}
