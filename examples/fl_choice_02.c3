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
    Fl_Window* win=fl::window_new(100,100,640,480,"fl_choice_02");
        Fl_Choice* cho=fl::choice_new(280,240,128,24,null);
            cho.add_choice("ASM/FASM|ASM/TASM|ASM/MASM|ASM/NASM|ASM/WASM|ASM/YASM");
            cho.add_choice("BASIC/Interpreter/ScriptBasic|BASIC/Compiler/FreeBASIC");
            cho.add_choice("BASIC/Interpreter/SdlBasic|BASIC/Interpreter/Yabasic");
            cho.add_choice("BASIC/Compiler/PureBasic|BASIC/Compiler/PowerBASIC");
            cho.add_choice("GUI/GTK+|GUI/FLTK|GUI/QT|GUI/WX");
            
            cho.set_value(0);
            cho.set_callback(&choice_cb,cho);

    return win;
}
fn void choice_cb(Fl_Widget* obj,void* data)
{
    Fl_Choice* cho=(Fl_Choice*)obj;
    io::printfn("type of cho is %s,nameof cho is %s",$typeof(cho).typeid.nameof,
                $nameof(cho));
    Fl_Window* win=(Fl_Window*)(obj.window());
    io::printfn("typeof obj.window() is %s",$typeof(obj.window()).typeid.nameof);
    io::printfn("type of win is %s,nameof win is %s",$typeof(win).typeid.nameof,
                $nameof(win));
  
    Fl_Menu_Item* menuItem=cho.mvalue();
    ZString label=menuItem.label();
    io::printfn("You chose %s\nNow change the window caption to '%s'",label,label);
    win.set_label(label);
}