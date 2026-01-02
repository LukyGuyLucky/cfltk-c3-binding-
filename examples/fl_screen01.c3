import std::io;
import fl;

fn void main()
{
    fl::init_all();
    fl::register_images();

    test_screen_functions();
    fl::run();
}
fn void test_screen_functions()
{
    int x,y,w,h;
    bool scale=(bool)fl::screen_scaling_supported();
    io::printfn("Is screen_scaling supported? %s",scale);

    io::printfn("There are total %d screens at present",fl::screen_count());

    fl::screen_xywh(&x,&y,&w,&h,0);
    io::printfn("Screen start position:{%d,%d}\n"
                "Screen area width:height:{%d,%d}",
                x,y,w,h);

    fl::screen_work_area(&x,&y,&w,&h,0);
    io::printfn("screen_work_area start position:{%d,%d}\n"
                "screen_work_area width:height:{%d,%d}",
                x,y,w,h);
    
    fl::screen_xywh_mouse(&x,&y,&w,&h);
    io::printfn("screen_mouse positon:{%d,%d}\n"
                "screen_mouse width:height:{%d,%d}",
                x,y,w,h);
}