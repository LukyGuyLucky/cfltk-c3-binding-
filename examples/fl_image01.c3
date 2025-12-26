import fl;

fn void main()
{
    fl::register_images();

    Fl_Window* win=fl::window_new(100,100,562,148,"fl_image01");
        Fl_BMP_Image* bmp=fl::bmp_image_new("media/renata.bmp");
        Fl_PNG_Image* png=fl::png_image_new("media/renata.png");
        Fl_GIF_Image* gif=fl::gif_image_new("media/renata.gif");
        Fl_JPEG_Image* jpg=fl::jpeg_image_new("media/renata.jpg");

        Fl_Box* box=fl::box_new(10,10,128,128,null);
            box.set_image(bmp);
        box=fl::box_new(148,10,128,128,null);
            box.set_image(png);
        box=fl::box_new(286,10,128,128,null);
            box.set_image(gif);
        box=fl::box_new(424,10,128,128,null);
            box.set_image(jpg);
    win.show();

    fl::run();
}