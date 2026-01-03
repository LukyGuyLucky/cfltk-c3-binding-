import fl;
import std::math;

const MAX_SLIDERS=30;
Fl_Value_Slider*[MAX_SLIDERS] sliders;
fn void main()
{
    fl::set_scheme("plastic");
    var win @safeinfer=fl::window_new(100,100,20+MAX_SLIDERS*30,175,"fl_slider04");
        for(int i=0;i<MAX_SLIDERS;i++)
        {
            sliders[i]=fl::value_slider_new(10+i*30,10,30,150,null);
            sliders[i].set_selection_color(fl::rgb_color(0,128,128));
            sliders[i].set_bounds(-1.0,1.0);
            sliders[i].set_value(0.0);
        }
    win.show();
    fl::add_timeout(1.0,&timeout_cb,&sliders);
    fl::run();
}

fn void timeout_cb(void* data)
{
    static double ow=0.0;

    Fl_Value_Slider* array=(Fl_Value_Slider*)data;
    
    double ws=math::atan(1)*4.0/MAX_SLIDERS;
    double w=ow;

    for(int i=0;i<MAX_SLIDERS;i++)
    {
        sliders[i].set_value(math::sin(w));
        w+=ws;
    }
    ow+=ws;

    fl::repeat_timeout(1.0/30,&timeout_cb,data);

}