import fl;
import libc;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"Drawing02-resize me!");
    win.draw(&draw_cb,null);
    win.resizable((Fl_Widget*)win);

    //win.end();
    win.show();

    fl::run();
}

fn int draw_cb(Fl_Widget* obj,int e,void* data)
{
    int w=obj.width();
    int h=obj.height();
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
    return 1;
}