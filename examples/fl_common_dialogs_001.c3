import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        
        
        ZString file,path;

        fl::init_all();

        //test_file_chooser();
        test_dialogs();
        fl::run();

    };
}
fn void test_dialogs()
{
    fl::message_title_default("I am a default title!Γειά σου Κόσμε!");
    fl::message("¡Hola Mundo!\nΓειά σου Κόσμε!\nПривет, мир!\nこんにちは世界！\n你好世界！\nनमस्ते दुनिया!👋🌎!");
    fl::alert("I am an alert message 1");
    fl::message_title("I am in individual title!");
    fl::alert("I am an alert message 2");
    int result=fl::choice("こんにちは世界！","¡Hola Mundo!","Γειά σου Κόσμε!","Привет, мир!");
    io::printfn("result is %s",result);

    char r8=128;
    char g8=64;
    char b8=0;

    fl::color_chooser("flColorChooser()",&r8,&g8,&b8,Fl_Mode.FL_MODE_RGB);
    io::printfn("chosen color: {%d,%d,%d}",r8,g8,b8);

    ZString input=fl::input("flInput:","type here...");
    io::printfn("You'v entered: %s",input);

    ZString path=fl::dir_chooser("select a folder",".",0);//1=relative 0=absolute path
    if(path) io::printfn("path is '%s'",path);


    Fl_File_Chooser* filechooser=fl::file_chooser_new(".","*.c3",0,"select file");
    defer filechooser.delete();

    filechooser.set_ok_label("I am a OK label");
    filechooser.show();
    while(filechooser.visible()) fl::wait();
    ZString file=filechooser.value(0);
    if(file) io::printfn("Chosen file is '%s'",file);

    Fl_Native_File_Chooser* openFileDialogNative=
            fl::native_file_chooser_new(Fl_FileDialogType.FL_FILEDIALOGTYPE_BROWSEMULTIFILE);
    defer openFileDialogNative.delete();
    openFileDialogNative.show();
    int count=openFileDialogNative.count();
    if(count)
    {
        for(int i=0;i<count;++i)
        {
            io::printfn("#%d\t%s",i+1,openFileDialogNative.filenames(i));
        }
    }
}
fn void test_file_chooser()
{
    Fl_File_Chooser* openFileDialog=fl::file_chooser_new(".","All Files (*.*)",
            Fl_FileChooserType.FL_FILECHOOSERTYPE_MULTI,"示例");
        defer openFileDialog.delete();

        //try to turn off all below 3 comments lines and play with it!!
        //openFileDialog.set_callback(&file_or_folder_cb,null);
        //openFileDialog.set_callback(&file_chooser_cb,null);
        openFileDialog.show();
        while(openFileDialog.visible()) fl::wait();
    
        int count=openFileDialog.count();
        if(count>0)
        {
            for(int i=0;i<count;i++)
            {
                ZString currentFilenane=openFileDialog.value(i);
                io::printfn("File(s) selected： %s",currentFilenane);
            }
        }
        
        //io::printfn("File selected： %s",openFileDialog.value(0));
}
fn void file_or_folder_cb(Fl_File_Chooser* obj,void* data)
{
    io::printfn("File Chooser file_or_foler_cb(\"%s\")!",obj.value(1));
    
}
fn void file_chooser_cb(Fl_File_Chooser* fc,void* data)
{
    for(int i=0;i<fc.count();i++)
    {
        ZString currentFilenane=fc.value(i);
        io::printfn("File(s) selected: %s",currentFilenane);
    }
}