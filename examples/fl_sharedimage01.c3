import fl;
import std::io;

fn void main()
{
    fl::register_images();

    var win @safeinfer=fl::window_new(100,100,694,148,"fl_shared_iamge01");
        Fl_Shared_Image*[] imgs=imgArray();
        fl::box_new(10, 10,128,128,null).set_image(imgs[0]);
        fl::box_new(148,10,128,128,null).set_image(imgs[1]);
        fl::box_new(286,10,128,128,null).set_image(imgs[2]);
        fl::box_new(424,10,128,128,null).set_image(imgs[3]);
        fl::box_new(556,10,128,128,null).set_image(imgs[4]);
    win.show();

    fl::run();
}
fn Fl_Shared_Image*[] imgArray()
{
    Fl_Shared_Image*[] result=mem::alloc_array(Fl_Shared_Image*,5);
    result[0]=fl::shared_image_get("media/renata.bmp",128,128);
    result[1]=fl::shared_image_get("media/renata.png",128,128);
    result[2]=fl::shared_image_get("media/renata.gif",128,128);
    result[3]=fl::shared_image_get("media/renata.jpg",128,128);
    result[4]=fl::shared_image_get("media/renata.bmp",128,128);

    return result;
}