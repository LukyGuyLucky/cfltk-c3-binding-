import fl;

fn void main()
{
    fl::register_images();

    Fl_Window* win=fl::window_new(100,100,562,148,"fl_image01");
        fl::box_new(10,10,128,128,null).set_image(fl::bmp_image_new("media/renata.bmp"));
        fl::box_new(148,10,128,128,null).set_image(fl::png_image_new("media/renata.png"));
        fl::box_new(286,10,128,128,null).set_image(fl::gif_image_new("media/renata.gif"));
        fl::box_new(424,10,128,128,null).set_image(fl::jpeg_image_new("media/renata.jpg"));    
    win.show();

    fl::run();
}