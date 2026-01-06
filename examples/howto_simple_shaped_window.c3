import fl;

fn void main()
{
    fl::init_all();
    fl::register_images();

    Fl_Double_Window* win=fl::double_window_new(100,100,320,240,"A simple shaped window");
        //Fl_RGB_Image* img=fl::rgb_image_new("media/renata.bmp");
        
        win.set_shape(getImage());
        win.end();
    win.show();

    fl::run();
}

fn Fl_RGB_Image* getImage()
{
    Fl_Shared_Image* img=fl::shared_image_get("media/clipping.bmp",300,200);
        Fl_Image_Surface* surf=fl::image_surface_new(300,200,0);

        fl::surface_device_push_current((Fl_Surface_Device*)surf);
            //surf.draw(win,300,200);
            //surf.draw_decorated_window(win,300,200);
            fl::draw_pixmap2(img.data(),300,200,Fl_Color.FL_COLOR_WHITE);
            Fl_RGB_Image* outimg=surf.image();
            surf.delete();
        fl::surface_device_pop_current();

    return outimg;
}