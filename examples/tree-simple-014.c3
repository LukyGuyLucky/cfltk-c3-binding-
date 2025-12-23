import fl;
import std::io;
import libc;

fn void main()
{
    fl::set_scheme("plastic");
    Fl_Double_Window* win=fl::double_window_new(100,100,600,400,"014-tree-simple");
    win.begin();
        Fl_Tree* tree=fl::tree_new(10,10,win.width()-20,win.height()-20,null);
        tree.set_showroot(0);//don't show root of tree;
        Callback cb=&tree_callback;
        tree.set_callback(cb,null);

        tree.add("Flintstones/Fred");
        tree.add("Flintstones/Wilma");
        tree.add("Flintstones/Pebbles");
        tree.add("नमस्ते दुनिया!👋🌎!/Привет, мир");
        tree.add("नमस्ते दुनिया!👋🌎!/Γειά σου Κόσμε");
        tree.add("नमस्ते दुनिया!👋🌎!/¡Hola Mundo");
        tree.add("नमस्ते दुनिया!👋🌎!/你好世界");
        tree.add("नमस्ते दुनिया!👋🌎!/こんにちは世界");
        tree.add("Simpsons/Homer");
        tree.add("Simpsons/Marge");
        tree.add("Simpsons/Bart");
        tree.add("Simpsons/Lisa");
        tree.add("Simpsons/Lisa/Lili");
        tree.add("Simpsons/Lisa/明明");
        tree.add("Pathnames/\\/bin") ;
        tree.add("Pathnames/\\/usr\\/sbin");
        tree.add("Pathnames/C:\\\\Program Files");
        tree.add("Pathnames/C:\\\\Documents and Settings");
        tree.add(`Pathnames/C:\\downloads`);

        tree.close("नमस्ते दुनिया!👋🌎!",0);
        tree.close("Simpsons",0);
        tree.close("Pathnames",0);


    win.end();
    win.resizable((Fl_Widget*)win);
    win.show();

    fl::run();
}
fn void tree_callback(Fl_Widget* w,void* data)
{
    Fl_Tree* tree=(Fl_Tree*)w;
    Fl_Tree_Item* item=(Fl_Tree_Item*)(tree.callback_item());

    if(!item) libc::exit(0);

    switch(tree.callback_reason())
    {
        case Fl_TreeReason.FL_TREEREASON_SELECTED:
            char[256] pathname;
            tree.item_pathname((ZString)&pathname,$sizeof(pathname),item);
            io::printfn("TreeCallback: Item selected=%s\nFull pathname=%s",
                    item.label(),(ZString)pathname[:pathname.len]);
        case Fl_TreeReason.FL_TREEREASON_DESELECTED:
            io::printfn("TreeCallback:Item %s deselected.",item.label());
        case Fl_TreeReason.FL_TREEREASON_OPENED:
            io::printfn("TreeCallback: Item %s opened.",item.label());
        case Fl_TreeReason.FL_TREEREASON_CLOSED:
            io::printfn("TreeCallback: Item %s closed.",item.label());
    }
}