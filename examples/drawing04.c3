import fl;

fn void main()
{
    fl::init_all();
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"drawing04");
        Fl_Box* box=fl::box_new(0,0,640,430,null);
        Fl_Hor_Value_Slider* sld=fl::hor_value_slider_new(10,430,620,30,"zoom");
        box.draw(&draw_cb,null);
        box.set_user_data(sld);
        sld.set_callback(&slider_cb,null);
        sld.set_range(0.01,3.0);
        sld.set_value(1.0);

        win.show();

        fl::run();
}

fn void slider_cb(Fl_Widget* obj,void* data)
{
    Fl_Double_Window* win=(Fl_Double_Window*)(obj.window());
    win.redraw();
    //((Fl_Double_Window*)obj.window())).redraw();

}
fn int draw_cb(Fl_Widget* obj,int e,void* data)
{
    double zoom=((Fl_Hor_Value_Slider*)(obj.user_data())).value();


    fl::push_matrix();
        fl::scale(zoom);

        fl::set_color_rgb(255,255,255);
        fl::begin_line();
            fl::vertex(0,0);
            fl::vertex(100,100);
        fl::end_line();

        fl::set_color_rgb(255,0,0);
        fl::begin_loop();
            fl::vertex(0,0);
            fl::vertex(0,100);
            fl::vertex(100,100);
            fl::vertex(100,0);
        fl::end_loop();

        fl::set_color_rgb(0,255,0);
        fl::begin_polygon();
            fl::vertex(10,10);
            fl::vertex(10,90);
            fl::vertex(90,90);
        fl::end_polygon();

        fl::set_color_rgb(0,0,255);
        fl::begin_complex_polygon();
            fl::vertex(10,10);
            fl::vertex(90,90);
            fl::vertex(90,10);
            fl::vertex(10,10);


            fl::vertex(20,20);
            fl::vertex(80,20);
            fl::vertex(80,80);
            fl::vertex(20,20);
        fl::end_complex_polygon();

        fl::set_color_rgb(255,0,255);
        fl::begin_complex_polygon();
            fl::arc_with_radius(200,100,100,0,360);
            fl::arc_with_radius(200,100,90,360,0);
        fl::end_complex_polygon();

        fl::set_color_rgb(0,128,128);
        fl::begin_complex_polygon();
            fl::arc_with_radius(200,100,60,0,90);
            fl::arc_with_radius(200,100,10,90,0);
        fl::end_complex_polygon();
    fl::pop_matrix();

    fl::set_color_int(Fl_Color.FL_COLOR_BLACK);
    fl::set_draw_font(Fl_Font.FL_FONT_TIMES,(int)(zoom*12+5));

    String z=string::tformat("zoom= %.2f",zoom);

    fl::draw(z.zstr_tcopy(),0,(int)(zoom*120));

    return 1;
}