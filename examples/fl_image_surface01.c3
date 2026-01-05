import fl;
import std::collections::list;
import libc;
import std::io;


fn int main() 
{
    fl::register_images();
    var win @safeinfer= fl::double_window_new(100,100,400, 300,"fl_image_surface01");
    win.begin();
    var box @safeinfer = fl::box_new(0, 0, 400, 300,null);
    win.end();
    var image @safeinfer = get_image(box.width(), box.height());
    defer image.delete();

    var transparent_image @safeinfer = get_transparent_image(image);
    defer transparent_image.delete();
    box.set_image(transparent_image);

    win.show();

    return fl::run();
}
fn Fl_RGB_Image *get_image(int w, int h) 
{
    // draw image on surface
    var img_surf @safeinfer = fl::image_surface_new(w, h,0);

    fl::surface_device_push_current((Fl_Surface_Device*)img_surf);
    // We'll use white to mask 255, 255, 255, see the loop
    fl::set_color_int(Fl_Color.FL_COLOR_WHITE);
    fl::rectf(0, 0, w, h);
    fl::set_color_int(Fl_Color.FL_COLOR_BLACK);
    fl::set_font(Fl_Font.FL_FONT_HELVETICABOLD, 20);
    fl::draw("Hello", 100, 100);
    var image @safeinfer = img_surf.image();
    img_surf.delete();
    fl::surface_device_pop_current();
    
    return image;
}

fn Fl_RGB_Image *get_transparent_image(Fl_RGB_Image *image) 
{
    assert(image);
    
    // make image transparent
    var data @safeinfer = (char*)(image.data());
    var len @safeinfer= image.width() * image.height() * image.d(); // the depth is by default 3

    usz dataSize=libc::strlen((ZString)data);

    List{char} temp;
    temp.tinit();
    defer temp.free();

    for (int i = 0; i < len; i++) 
    {
        if (i > 0 && i % 3 == 0) {
            // check if the last 3 vals are the rgb values of white, add a 0 alpha
            if (data[i] == 255 && data[i - 1] == 255 && data[i - 2] == 255)
            {
                temp.push(0);
            } 
            else
            {
                // add a 255 alpha, making the black opaque
                temp.push(255);
            }
                
            temp.push(data[i]);
        } else 
        {
            temp.push(data[i]);
        }
    }
    temp.push(0);
    assert(temp.size == image.width() * image.height() * 4);
    char[] new_image_data =mem::alloc_array(char,(usz)image.width() * image.height() * 4);

    libc::memcpy(new_image_data, temp.array_view(), (usz)image.width() * image.height() * 4);

    // account for alpha
    var new_image @safeinfer = fl::rgb_image_from_data(new_image_data, 
			image.width(), image.height(), 4,2); 

    return new_image;
}

