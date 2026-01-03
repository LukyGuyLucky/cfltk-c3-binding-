import fl;
import libc;

fn Fl_Shared_Image*[] imgList()
{
    Fl_Shared_Image*[] result=mem::alloc_array(Fl_Shared_Image*,4);
    result[0]=fl::shared_image_get("media/renata.bmp",128,128);
    result[1]=fl::shared_image_get("media/renata.png",128,128);
    result[2]=fl::shared_image_get("media/renata.gif",128,128);
    result[3]=fl::shared_image_get("media/renata.jpg",128,128);

    return result;
}
fn void main()
{
    fl::register_images();

    var win @safeinfer=fl::window_new(100,100,148,148,"fl_sharedimage03");
        var box @safeinfer=fl::box_new(10,10,128,128,null);
        box.set_image(imgList()[0]);
    win.show();

    fl::add_timeout(0.5,&timeout_cb,box);

    fl::run();
}

fn void timeout_cb(void* obj)
{
    Fl_Box* box=(Fl_Box*)obj;
    static int index=0;

    int nImages=imgList().len;
    if(nImages<1)
    {
        fl::message_title("Error:in timeout_cb()");
        fl::alert("No image loaded!\nApp will close.");
        Fl_Window* win=(Fl_Window*)(box.window());
        win.hide();
        libc::exit(0);
    }
    box.set_image(imgList()[index]);
    box.redraw();
    index=(index+1)%nImages;

    fl::repeat_timeout(0.5,&timeout_cb,box);
}