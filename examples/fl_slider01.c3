import fl;
import std::io;

fn void main()
{
    var win @safeinfer=fl::window_new(100,100,240,240,"fl_slider01");
        var sld @safeinfer=fl::slider_new(60,35,30,170,null);
        sld.set_callback(&slider_cb,sld);
        sld.set_step(0.005,1);
        sld.set_bounds(0,1);
    win.show();

    fl::run();
}
fn void slider_cb(Fl_Widget* obj,void* data)
{
    Fl_Slider* sld=(Fl_Slider*)obj;
    io::printfn("SliderCB: %.3f",sld.value());
}