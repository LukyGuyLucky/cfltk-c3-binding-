import fl;
import std::io;


fn void main()
{
    Fl_Window* win=fl::window_new(100,100,500,200,"Tabs03");
        Fl_Tabs* tabs=fl::tabs_new(10,10,500-20,200-20,null);
        tabs.set_callback(&tab_cb,tabs);
        tabs.set_label("");
        tabs.begin();
            Fl_Group* tabA=fl::group_new(10,35,500-20,200-45,"Tab 1");
            tabA.begin();
                Fl_Button* b1=fl::button_new(50,60,90,25,"Button A");
                Fl_Button* b2=fl::button_new(50,90,90,25,"Button B");
            tabA.end();

            Fl_Group* tabB=fl::group_new(10,35,500-20,200-45,"Tab 2");
            tabB.begin();
                Fl_Button* b3=fl::button_new(50,50,90,25,"Button C");
                Fl_Button* b4=fl::button_new(50,90,90,25,"Button D");
            tabB.end();

            Fl_Group* tabC=fl::group_new(10,35,500-20,200-45,"Tab 3");
            tabC.begin();
                Fl_Button* b5=fl::button_new(50,60,90,25,"Button E");
                Fl_Button* b6=fl::button_new(50,90,90,25,"Button F");
            tabC.end();

            b1.set_callback(&button_cb,b1);
            b2.set_callback(&button_cb,b2);
            b3.set_callback(&button_cb,b3);
            b4.set_callback(&button_cb,b4);
            b5.set_callback(&button_cb,b5);
            b6.set_callback(&button_cb,b6);
        tabs.end();
    win.end();

    win.show();

    fl::run();

}
fn void tab_cb(Fl_Widget* obj,void* data)
{
    Fl_Tabs* tab=(Fl_Tabs*)obj;
    Fl_Group* group=(Fl_Group*)(tab.value());
    io::printfn("TabCB: %s",group.label());
}
fn void button_cb(Fl_Widget* obj,void* data)
{
    Fl_Button* btn=(Fl_Button*)obj;
    io::printfn("ButtonCB:%s",btn.label());
}