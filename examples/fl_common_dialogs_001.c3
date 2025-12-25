import fl;
import std::io;

const SIZE=200;

fn void main()
{
    mem::@report_heap_allocs_in_scope(){
        ushort r8=128;
        ushort g8=64;
        ushort bn8=0;
        double rr=0.5;
        double gg=0.25;
        double bb=0.0;
        ZString file,path;

        fl::init_all();

        test_file_chooser();
        
        fl::run();

    };
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