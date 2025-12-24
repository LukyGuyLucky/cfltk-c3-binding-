import fl;
import std::io;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        main_window().show();
        fl::run();
    };
}
fn Fl_Window* main_window()
{
    Fl_Window* win=fl::window_new(100,100,356,240,"fl_choice_01");
        Fl_Choice* cho=fl::choice_new(64,10,128,24,"Label:");
            cho.add_choice("item1");
            cho.add_choice("item2|item4");

            cho.insert(2,"item3",0,null,null,0);
            cho.set_value(2);

    return win;
}
