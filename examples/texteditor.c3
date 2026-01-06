import fl;

fn void main()
{
    Fl_Double_Window* win=fl::double_window_new(100,100,640,480,"Simple Fl_Text_Editor");
        Fl_Text_Buffer* buff=fl::text_buffer_new();
        Fl_Text_Editor* edit=fl::text_editor_new(20,20,640-40,480-40,null);
        edit.set_buffer(buff);

        win.resizable(edit);
        win.show();

        buff.set_text("line 0\nline 1\nline 2\n"
                "line 3\nline 4\nline 5\n"
                "line 6\nline 7\nline 8\n"
                "line 9\nline 10\nline 11\n"
                "line 12\nline 13\nline 14\n"
                "line 15\nline 16\nline 17\n"
                "line 18\nline 19\nline 20\n"
                "line 21\nline 22\nline 23\n"
                "Hello, world!\n"
                "¡Hola Mundo!\n"
                "Γειά σου Κόσμε!\n"
                "Привет, мир!\n"
                "こんにちは世界\n"
                "你好世界\n"
                "नमस्ते दुनिया!\n"
                "👋🌎!");

    fl::run();
}