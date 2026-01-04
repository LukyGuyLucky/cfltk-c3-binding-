import fl;
import libc;

fn void main()
{
    fl::init_all();
    
    Fl_Gl_Window* win=fl::gl_window_new(100,100,500,500,"fl_gl01");
    win.begin();

        Fl_Button* btn=fl::button_new(10,10,120,34,"&Draw");
        btn.set_box(Fl_BoxType.FL_BOXTYPE_BORDERBOX);
        btn.set_color(Fl_Color.FL_COLOR_MAGENTA);
        btn.set_callback(&click_cb,win);
    win.show();

    fl::run();
}
fn void click_cb(Fl_Widget* obj,void* data)
{
    Fl_Gl_Window* win=(Fl_Gl_Window*)data;
    win.make_current();
    win.draw(&draw_cb,null);
}
fn void draw_cb(Fl_Widget* obj,void* data)
{
    Fl_Gl_Window* win=(Fl_Gl_Window*)obj;
    win.make_current();
    //win.set_mode(Fl_Mode.FL_MODE_RGB);
    if(!win.valid()) win.set_valid(1);
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
