import fl;

fn void main()
{
    fl::register_images();

    int[6] sizes;
    sizes[0]=sizes[1]=16;
    for(int i=2;i<6;i++)
    {
        sizes[i]=2^(i-2+1)*16;
    }
    Fl_Shared_Image*[*] imgList=
    {
        fl::shared_image_get("media/win.png",sizes[0],sizes[0]),
        fl::shared_image_get("media/lin.png",sizes[1],sizes[1]),
        fl::shared_image_get("media/renata.gif",sizes[2],sizes[2]),
        fl::shared_image_get("media/renata.bmp",sizes[3],sizes[3]),
        fl::shared_image_get("media/renata.jpg",sizes[4],sizes[4]),
        fl::shared_image_get("media/renata.png",sizes[5],sizes[5])
    };

    int nImages=imgList.len;

    var win @safeinfer=fl::window_new(100,100,256*4,512,"fl_sharedimage04");
        int x=30;
        for(int i=0;i<nImages;i++)
        {
            int size=2^(i+1)*16;
            var box @safeinfer=fl::box_new(x,100,sizes[i],sizes[i],null);
            var img @safeinfer=fl::from_dyn_ptr((Fl_Image*)imgList[i]);
            box.set_image(img);
            x+=size*2;
        }
    win.show();

    fl::run();
}