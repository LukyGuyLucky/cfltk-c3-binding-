module fl;

struct Fl_Tree{void* _data_;}
struct Fl_Tree_Item{void* _data_;}
struct Fl_Tree_Item_Array{void* _data_;}


extern fn Fl_Tree* tree_new(int,int,int,int,ZString) @cname("Fl_Tree_new");
extern fn int Fl_Tree.set_showroot(&self,int) @cname("Fl_Tree_set_showroot");
extern fn void Fl_Tree.set_callback(&self,Callback,void*) @cname("Fl_Tree_set_callback");
extern fn int Fl_Tree.callback_reason(&self) @cname("Fl_Tree_callback_reason");
extern fn int Fl_Tree.item_pathname(&self,ZString,int,Fl_Tree_Item*) @cname("Fl_Tree_item_pathname");
extern fn Fl_Tree_Item* Fl_Tree.add(&self,ZString) @cname("Fl_Tree_add");
extern fn Fl_Tree_Item* Fl_Tree.callback_item(&self) @cname("Fl_Tree_callback_item");
extern fn int Fl_Tree.close(&self,ZString,int) @cname("Fl_Tree_close");
extern fn int Fl_Tree.open(&self,ZString,int) @cname("Fl_Tree_open");

extern fn void Fl_Tree_Item.open(&self) @cname("Fl_Tree_Item_open");
extern fn void Fl_Tree_Item.close(&self) @cname("Fl_Tree_Item_close");
extern fn ZString Fl_Tree_Item.label(&self) @cname("Fl_Tree_Item_label");



extern fn void Fl_Tree.begin(&self) @cname("Fl_Tree_begin");

extern fn void Fl_Tree.end(&self) @cname("Fl_Tree_end");

extern fn void Fl_Tree.show_self(&self) @cname("Fl_Tree_show_self");

extern fn void Fl_Tree.root_label(&self, ZString new_label) @cname("Fl_Tree_root_label");

extern fn Fl_Tree_Item* Fl_Tree.root(&self) @cname("Fl_Tree_root");

extern fn void Fl_Tree.set_root(&self, Fl_Tree_Item *newitem) @cname("Fl_Tree_set_root");

//extern fn Fl_Tree_Item* Fl_Tree.add(Fl_Tree& self, ZString name) @cname("Fl_Tree_add");

extern fn Fl_Tree_Item*
Fl_Tree.add_item(&self, ZString name, Fl_Tree_Item *item) @cname("Fl_Tree_add_item");

extern fn Fl_Tree_Item*
Fl_Tree.insert_above(&self, Fl_Tree_Item *above, ZString name) @cname("Fl_Tree_insert_above");

extern fn Fl_Tree_Item*
Fl_Tree.insert(&self, Fl_Tree_Item *item, ZString name, int pos) @cname("Fl_Tree_insert");

extern fn Fl_Tree_Item* Fl_Tree.find_item(&self, ZString path) @cname("Fl_Tree_find_item");

extern fn Fl_Tree_Item* Fl_Tree.find_item_mut(&self, ZString path) @cname("Fl_Tree_find_item_mut");

extern fn int Fl_Tree.remove(&self, Fl_Tree_Item *item) @cname("Fl_Tree_remove");

extern fn void Fl_Tree.clear(&self) @cname("Fl_Tree_clear");

extern fn void Fl_Tree.clear_children(&self, Fl_Tree_Item *item) @cname("Fl_Tree_clear_children");

extern fn Fl_Tree_Item* Fl_Tree.find_clicked(&self, int yonly) @cname("Fl_Tree_find_clicked");

extern fn Fl_Tree_Item* Fl_Tree.item_clicked(&self) @cname("Fl_Tree_item_clicked");

extern fn Fl_Tree_Item* Fl_Tree.first(&self) @cname("Fl_Tree_first");

extern fn Fl_Tree_Item* Fl_Tree.first_visible_item(&self) @cname("Fl_Tree_first_visible");

extern fn Fl_Tree_Item* Fl_Tree.next(&self, Fl_Tree_Item *item) @cname("Fl_Tree_next");

extern fn Fl_Tree_Item* Fl_Tree.prev(&self, Fl_Tree_Item *item) @cname("Fl_Tree_prev");

extern fn Fl_Tree_Item* Fl_Tree.last(&self) @cname("Fl_Tree_last");

extern fn Fl_Tree_Item* Fl_Tree.last_visible_item(&self) @cname("Fl_Tree_last_visible_item");

extern fn Fl_Tree_Item*
Fl_Tree.next_visible_item(&self, Fl_Tree_Item *start, int dir) @cname("Fl_Tree_next_visible_item");

extern fn Fl_Tree_Item* Fl_Tree.first_selected_item(&self) @cname("Fl_Tree_first_selected_item");

extern fn Fl_Tree_Item* Fl_Tree.last_selected_item(&self) @cname("Fl_Tree_last_selected_item");

extern fn Fl_Tree_Item*
Fl_Tree.next_item(&self, Fl_Tree_Item *item, int dir, int visible) @cname("Fl_Tree_next_item");

extern fn Fl_Tree_Item*
Fl_Tree.next_selected_item(&self, Fl_Tree_Item *item, int dir) @cname("Fl_Tree_next_selected_item");

extern fn int Fl_Tree.get_selected_items(&self, Fl_Tree_Item_Array **arr) @cname("Fl_Tree_get_selected_items");

extern fn int Fl_Tree.get_items(&self, Fl_Tree_Item_Array **arr) @cname("Fl_Tree_get_items");

//fn int Fl_Tree.open(&self, ZString path, int docallback) @cname("Fl_Tree_open");

extern fn void Fl_Tree.open_toggle(&self, Fl_Tree_Item *item, int docallback) @cname("Fl_Tree_open_toggle");

//fn int Fl_Tree.close(&self, ZString path, int docallback) @cname("Fl_Tree_close");

extern fn int Fl_Tree.is_open(&self, ZString path) @cname("Fl_Tree_is_open");

extern fn int Fl_Tree.is_close(&self, ZString path) @cname("Fl_Tree_is_close");

extern fn int Fl_Tree.select(&self, ZString path, int docallback) @cname("Fl_Tree_select");

extern fn void Fl_Tree.select_toggle(&self, Fl_Tree_Item *item, int docallback) @cname("Fl_Tree_select_toggle");

extern fn int Fl_Tree.deselect(&self, ZString path, int docallback) @cname("Fl_Tree_deselect");

extern fn int Fl_Tree.deselect_all(&self, Fl_Tree_Item *item, int docallback) @cname("Fl_Tree_deselect_all");

extern fn int Fl_Tree.select_only(&self, Fl_Tree_Item *selitem, int docallback) @cname("Fl_Tree_select_only");

extern fn int Fl_Tree.select_all(&self, Fl_Tree_Item *item, int docallback) @cname("Fl_Tree_select_all");

extern fn int Fl_Tree.extend_selection_dir(
    &self,
    Fl_Tree_Item *from,
    Fl_Tree_Item *to,
    int dir,
    int val,
    int visible
) @cname("Fl_Tree_extend_selection_dir");

extern fn int Fl_Tree.extend_selection(
    &self, Fl_Tree_Item *from, Fl_Tree_Item *to, int val, int visible
) @cname("Fl_Tree_extend_selection");

extern fn void Fl_Tree.set_item_focus(&self, Fl_Tree_Item *item) @cname("Fl_Tree_set_item_focus");

extern fn Fl_Tree_Item* Fl_Tree.get_item_focus(&self) @cname("Fl_Tree_get_item_focus");

extern fn int Fl_Tree.is_selected(&self, ZString path) @cname("Fl_Tree_is_selected");

extern fn int Fl_Tree.item_labelfont(&self) @cname("Fl_Tree_item_labelfont");

extern fn void Fl_Tree.set_item_labelfont(&self, int val) @cname("Fl_Tree_set_item_labelfont");

extern fn int Fl_Tree.item_labelsize(&self) @cname("Fl_Tree_item_labelsize");

extern fn void Fl_Tree.set_item_labelsize(&self, int val) @cname("Fl_Tree_set_item_labelsize");

extern fn uint Fl_Tree.item_labelfgcolor(&self) @cname("Fl_Tree_item_labelfgcolor");

extern fn void Fl_Tree.set_item_labelfgcolor(&self, uint val) @cname("Fl_Tree_set_item_labelfgcolor");

extern fn uint Fl_Tree.item_labelbgcolor(&self) @cname("Fl_Tree_item_labelbgcolor");

extern fn void Fl_Tree.set_item_labelbgcolor(&self, uint val) @cname("Fl_Tree_set_item_labelbgcolor");

extern fn uint Fl_Tree.connectorcolor(&self) @cname("Fl_Tree_connectorcolor");

extern fn void Fl_Tree.set_connectorcolor(&self, uint val) @cname("Fl_Tree_set_connectorcolor");

extern fn int Fl_Tree.marginleft(&self) @cname("Fl_Tree_marginleft");

extern fn void Fl_Tree.set_marginleft(&self, int val) @cname("Fl_Tree_set_marginleft");

extern fn int Fl_Tree.margintop(&self) @cname("Fl_Tree_maginintop");

extern fn void Fl_Tree.set_margintop(&self, int val) @cname("Fl_Tree_set_magintop");

extern fn int Fl_Tree.marginbottom(&self) @cname("Fl_Tree_maginbottom");

extern fn void Fl_Tree.set_marginbottom(&self, int val) @cname("Fl_Tree_set_maginbottom");

extern fn int Fl_Tree.linespacing(&self) @cname("Fl_Tree_linespacing");

extern fn void Fl_Tree.set_linespacing(&self, int val) @cname("Fl_Tree_set_linespacing");

extern fn int Fl_Tree.openchild_marginbottom(&self) @cname("Fl_Tree_openchild_marginbottom");

extern fn void Fl_Tree.set_openchild_marginbottom(&self, int val) @cname("Fl_Tree_set_openchild_marginbottom");

extern fn int Fl_Tree.usericonmarginleft(&self) @cname("Fl_Tree_usericonmarginleft");

extern fn void Fl_Tree.set_usericonmarginleft(&self, int val) @cname("Fl_Tree_set_usericonmarginleft");

extern fn int Fl_Tree.labelmarginleft(&self) @cname("Fl_Tree_labelmarginleft");

extern fn void Fl_Tree.set_labelmarginleft(&self, int val) @cname("Fl_Tree_set_labelmarginleft");

extern fn int Fl_Tree.widgetmarginleft(&self) @cname("Fl_Tree_widgetmarginleft");

extern fn void Fl_Tree.set_widgetmarginleft(&self, int val) @cname("Fl_Tree_set_widgetmarginleft");

extern fn int Fl_Tree.connectorwidth(&self) @cname("Fl_Tree_connectorwidth");

extern fn void Fl_Tree.set_connectorwidth(&self, int val) @cname("Fl_Tree_set_connectorwidth");

extern fn void* Fl_Tree.usericon(&self) @cname("Fl_Tree_usericon");

extern fn void Fl_Tree.set_usericon(&self, void *val) @cname("Fl_Tree_set_usericon");

extern fn void* Fl_Tree.openicon(&self) @cname("Fl_Tree_openicon");

extern fn void Fl_Tree.set_openicon(&self, void *val) @cname("Fl_Tree_set_openicon");

extern fn void* Fl_Tree.closeicon(&self) @cname("Fl_Tree_closeicon");

extern fn void Fl_Tree.set_closeicon(&self, void *val) @cname("Fl_Tree_set_closeicon");

extern fn int Fl_Tree.showcollapse(&self) @cname("Fl_Tree_showcollapse");

extern fn void Fl_Tree.set_showcollapse(&self, int val) @cname("Fl_Tree_set_showcollapse");

extern fn int Fl_Tree.showroot(&self) @cname("Fl_Tree_showroot");

//fn void Fl_Tree.set_showroot(&self, int val) @cname("Fl_Tree_set_showroot");

extern fn int Fl_Tree.connectorstyle(&self) @cname("Fl_Tree_connectorstyle");

extern fn void Fl_Tree.set_connectorstyle(&self, int val) @cname("Fl_Tree_set_connectorstyle");

extern fn int Fl_Tree.sortorder(&self) @cname("Fl_Tree_sortorder");

extern fn void Fl_Tree.set_sortorder(&self, int val) @cname("Fl_Tree_set_sortorder");

extern fn int Fl_Tree.selectbox(&self) @cname("Fl_Tree_selectbox");

extern fn void Fl_Tree.set_selectbox(&self, int val) @cname("Fl_Tree_selectbox");

extern fn int Fl_Tree.selectmode(&self) @cname("Fl_Tree_selectmode");

extern fn void Fl_Tree.set_selectmode(Fl_Tree *self, int val) @cname("Fl_Tree_set_selectmode");

extern fn int Fl_Tree.item_reselect_mode(&self) @cname("Fl_Tree_item_reselect_mode");

extern fn void Fl_Tree.set_item_reselect_mode(&self, int mode) @cname("Fl_Tree_set_item_reselect_mode");

extern fn int Fl_Tree.item_draw_mode(&self) @cname("Fl_Tree_item_draw_mode");

extern fn void Fl_Tree.set_item_draw_mode(&self, int mode) @cname("Fl_Tree_set_item_draw_mode");

extern fn void Fl_Tree.calc_dimensions(&self) @cname("Fl_Tree_calc_dimensions");

extern fn void Fl_Tree.calc_tree(&self) @cname("Fl_Tree_calc_tree");

extern fn void Fl_Tree.recalc_tree(&self) @cname("Fl_Tree_recalc_tree");

extern fn int Fl_Tree.displayed(&self, Fl_Tree_Item *item) @cname("Fl_Tree_displayed");

extern fn void Fl_Tree.show_item(&self, Fl_Tree_Item *item, int yoff) @cname("Fl_Tree_show_item");

extern fn void Fl_Tree.show_item_top(Fl_Tree *self, Fl_Tree_Item *item) @cname("Fl_Tree_show_item_top");

extern fn void Fl_Tree.show_item_middle(&self, Fl_Tree_Item *item) @cname("Fl_Tree_show_item_middle");

extern fn void Fl_Tree.show_item_bottom(&self, Fl_Tree_Item *item) @cname("Fl_Tree_show_item_bottom");

extern fn void Fl_Tree.display(&self, Fl_Tree_Item *item) @cname("Fl_Tree_display");

extern fn int Fl_Tree.vposition(&self) @cname("Fl_Tree_vposition");

extern fn void Fl_Tree.set_vposition(Fl_Tree *self, int pos) @cname("Fl_Tree_set_vposition");

extern fn int Fl_Tree.hposition(&self) @cname("Fl_Tree_hposition");

extern fn void Fl_Tree.set_hposition(&self, int pos) @cname("Fl_Tree_set_hposition");

extern fn int Fl_Tree.is_scrollbar(&self, Fl_Widget *w) @cname("Fl_Tree_is_scrollbar");

extern fn int Fl_Tree.scrollbar_size(&self) @cname("Fl_Tree_scrollbar_size");

extern fn void Fl_Tree.set_scrollbar_size(&self, int size) @cname("Fl_Tree_set_scrollbar_size");

extern fn int Fl_Tree.is_vscroll_visible(&self) @cname("Fl_Tree_is_vscroll_visible");

extern fn int Fl_Tree.is_hscroll_visible(&self) @cname("Fl_Tree_is_hscroll_visible");

extern fn void Fl_Tree.set_callback_item(&self, Fl_Tree_Item *item) @cname("Fl_Tree_set_callback_item");

//fn Fl_Tree_Item* Fl_Tree.callback_item(&self) @cname("Fl_Tree_callback_item");

extern fn void Fl_Tree.set_callback_reason(&self, int reason) @cname("Fl_Tree_set_callback_reason");

//fn int Fl_Tree.callback_reason(&self) @cname("Fl_Tree_callback_reason");

//fn int Fl_Tree.item_pathname(&self,ZString pathname,int pathnamelen,Fl_Tree_Item *item) @cname("Fl_Tree_item_pathname");

/* TreeItems */


alias Tree_Item_cb=fn int(Fl_Tree_Item*,int,void*);
extern fn Fl_Tree_Item* tree_item_new(Fl_Tree *tree, ZString txt) @cname("Fl_Tree_item_new");

extern fn void Fl_Tree_Item.draw_item_content(
    &self, Tree_Item_cb, void *data
) @cname("Fl_Tree_Item_draw_item_content");

extern fn void Fl_Tree_Item.set_user_data(&self, void *data) @cname("Fl_Tree_Item_set_user_data");

extern fn void* Fl_Tree_Item.user_data(&self) @cname("Fl_Tree_Item_user_data");

extern fn int Fl_Tree_Item.x(&self) @cname("Fl_Tree_Item_x");

extern fn int Fl_Tree_Item.y(&self) @cname("Fl_Tree_ITem_y");

extern fn int Fl_Tree_Item.w(&self) @cname("Fl_Tree_Item_w");

extern fn int Fl_Tree_Item.h(&self) @cname("Fl_Tree_Item_h");

extern fn int Fl_Tree_Item.label_x(&self) @cname("Fl_Tree_Item_label_x");

extern fn int Fl_Tree_Item.label_y(&self) @cname("Fl_Tree_Item_label_y");

extern fn int Fl_Tree_Item.label_w(&self) @cname("Fl_Tree_Item_label_w");

extern fn int Fl_Tree_Item.label_h(&self) @cname("Fl_Tree_Item_label_h");

extern fn void Fl_Tree_Item.show_self(&self, ZString indent) @cname("Fl_Tree_Item_show_self");

extern fn void Fl_Tree_Item.set_Item_label(&self, ZString val) @cname("Fl_Tree_set_item_label");

//fn ZString Fl_Tree_Item.label(&self) @cname("Fl_Tree_Item_label");

extern fn void Fl_Tree_Item.set_labelfont(&self, int val) @cname("Fl_Tree_Item_set_labelfont");

extern fn int Fl_Tree_Item.labelfont(&self) @cname("Fl_Tree_Item_labelfont");

extern fn void Fl_Tree_Item.set_labelsize(&self, int val) @cname("Fl_Tree_Item_set_labelsize");

extern fn int Fl_Tree_Item.labelsize(&self) @cname("Fl_Tree_Item_labelsize");

extern fn void Fl_Tree_Item.set_labelfgcolor(&self, uint val) @cname("Fl_Tree_Item_set_labelfgcolor");

extern fn uint Fl_Tree_Item.labelfgcolor(&self) @cname("Fl_Tree_Item_labelfgcolor");

extern fn void Fl_Tree_Item.set_labelcolor(&self, uint val) @cname("Fl_Tree_Item_set_labelcolor");

extern fn uint Fl_Tree_Item.labelcolor(&self) @cname("Fl_Tree_Item_labelcolor");

extern fn void Fl_Tree_Item.set_labelbgcolor(&self, uint val) @cname("Fl_Tree_Item_set_labelbgcolor");

extern fn uint Fl_Tree_Item.labelbgcolor(&self) @cname("Fl_Tree_Item_labelbgcolor");

extern fn void Fl_Tree_Item.set_widget(&self, Fl_Widget *val) @cname("Fl_Tree_Item.set_widget");

extern fn Fl_Widget* Fl_Tree_Item.widget(&self) @cname("Fl_Tree_Item_widget");

extern fn int Fl_Tree_Item.children(&self) @cname("Fl_Tree_Item_children");

extern fn Fl_Tree_Item* Fl_Tree_Item.child(&self, int t) @cname("Fl_Tree_Item_child");

extern fn int Fl_Tree_Item.has_children(&self) @cname("Fl_Tree_Item_has_children");

extern fn int Fl_Tree_Item.find_child(&self, ZString name) @cname("Fl_Tree_Item_find_child");

extern fn int Fl_Tree_Item.remove_child(&self, ZString new_label) @cname("Fl_Tree_Item_remove_child");

extern fn void Fl_Tree_Item.clear_children(&self) @cname("Fl_Tree_Item_clear");

extern fn int Fl_Tree_Item.swap_children(
    &self, Fl_Tree_Item *a, Fl_Tree_Item *b
) @cname("Fl_Tree_Item_swap_children");

extern fn Fl_Tree_Item *
Fl_Tree_Item.find_child_item(&self, ZString name) @cname("Fl_Tree_Item_find_child_item");

extern fn Fl_Tree_Item* Fl_Tree_Item.replace(&self, Fl_Tree_Item *new_item) @cname("Fl_Tree_Item_replace");

extern fn Fl_Tree_Item* Fl_Tree_Item.replace_child(
    &self, Fl_Tree_Item *olditem, Fl_Tree_Item *newitem
) @cname("Fl_Tree_Item_replace_child");

extern fn Fl_Tree_Item* Fl_Tree_Item.deparent(&self, int index) @cname("Fl_Tree_Item_deparent");

extern fn int Fl_Tree_Item.reparent(
    &self, Fl_Tree_Item *newchild, int index
) @cname("Fl_Tree_Item_reparent");

extern fn int Fl_Tree_Item.move(&self, int to, int from) @cname("Fl_Tree_Item_move");

extern fn int Fl_Tree_Item.move_above(&self, Fl_Tree_Item *item) @cname("Fl_Tree_Item_move_above");

extern fn int Fl_Tree_Item.move_below(&self, Fl_Tree_Item *item) @cname("Fl_Tree_Item_move_below");
extern fn int Fl_Tree_Item.move_into(&self, Fl_Tree_Item *item, int pos) @cname("Fl_Tree_Item_move_into");

extern fn int Fl_Tree_Item.depth(&self) @cname("Fl_Tree_Item_depth");

extern fn Fl_Tree_Item* Fl_Tree_Item.prev(&self) @cname("Fl_Tree_Item_prev");

extern fn Fl_Tree_Item* Fl_Tree_Item.next(&self) @cname("Fl_Tree_Item_next");

extern fn Fl_Tree_Item* Fl_Tree_Item.next_sibling(Fl_Tree_Item *self) @cname("Fl_Tree_Item_next_sibling");

extern fn Fl_Tree_Item* Fl_Tree_Item.prev_sibling(&self) @cname("Fl_Tree_Item_prev_sibling");

extern fn void Fl_Tree_Item.update_prev_next(&self, int index) @cname("Fl_Tree_Item_update_prev_next");

extern fn Fl_Tree_Item* Fl_Tree_Item.parent(&self) @cname("Fl_Tree_Item_parent");

extern fn void Fl_Tree_Item.set_parent(&self, Fl_Tree_Item *val) @cname("Fl_Tree_Item_set_parent");

extern fn Fl_Tree *Fl_Tree_Item.tree(&self) @cname("Fl_Tree_Item_tree");

//fn void Fl_Tree_Item.open(&self) @cname("Fl_Tree_Item_open");

//fn void Fl_Tree_Item.close(&self) @cname("Fl_Tree_Item_close");

extern fn int Fl_Tree_Item.is_open(&self) @cname("Fl_Tree_Item_is_open");

extern fn int Fl_Tree_Item.is_close(&self) @cname("Fl_Tree_Item_is_close");

extern fn void Fl_Tree_Item.open_toggle(&self) @cname("Fl_Tree_Item_open_toggle");

extern fn void Fl_Tree_Item.select(&self, int val) @cname("Fl_Tree_Item_select");

extern fn void Fl_Tree_Item.select_toggle(&self) @cname("Fl_Tree_Item_select");

extern fn int Fl_Tree_Item.select_all(&self) @cname("Fl_Tree_Item_select_all");

extern fn void Fl_Tree_Item.deselect(&self) @cname("Fl_Tree_Item_deselect");

extern fn int Fl_Tree_Item.deselect_all(&self) @cname("Fl_Tree_Item_deselect_all");

extern fn int Fl_Tree_Item.is_root(&self) @cname("Fl_Tree_Item_is_root");

extern fn int Fl_Tree_Item.is_visible(&self) @cname("Fl_Tree_Item_is_visible");

extern fn char Fl_Tree_Item.is_active(&self) @cname("Fl_Tree_Item_is_active");

extern fn char Fl_Tree_Item.is_activated(&self) @cname("Fl_Tree_Item_is_activated");

extern fn void Fl_Tree_Item.deactivate(&self) @cname("Fl_Tree_Item_deactivate");

extern fn void Fl_Tree_Item.activate(&self, int val) @cname("Fl_Tree_Item_activate");

extern fn char Fl_Tree_Item.is_selected(&self) @cname("Fl_Tree_Item_is_selected");

/* TreeItemArray */

extern fn int Fl_Tree_Item_Array.total(&self) @cname("Fl_Tree_Item_Array_total");

extern fn void Fl_Tree_Item_Array.swap(&self, int ax, int bx) @cname("Fl_Tree_Item_Array_swap");

extern fn int Fl_Tree_Item_Array.move(&self, int to, int from) @cname("Fl_Tree_Item_Array_move");

extern fn int Fl_Tree_Item_Array.deparent(&self, int pos) @cname("Fl_Tree_Item_Array_deparent");

extern fn int Fl_Tree_Item_Array.reparent(
    &self,
    Fl_Tree_Item *item,
    Fl_Tree_Item *newparent,
    int pos
) @cname("Fl_Tree_Item_Array_reparent");

extern fn void Fl_Tree_Item_Array.clear(&self) @cname("Fl_Tree_Item_Array_clear");

extern fn void Fl_Tree_Item_Array.add(&self, Fl_Tree_Item *val) @cname("Fl_Tree_Item_Array_add");

extern fn void Fl_Tree_Item_Array.insert(
    &self, int pos, Fl_Tree_Item *new_item
) @cname("Fl_Tree_Item_Array_insert");

extern fn void Fl_Tree_Item_Array.replace(
    &self, int pos, Fl_Tree_Item *new_item
) @cname("Fl_Tree_Item_Array_replace");

extern fn void Fl_Tree_Item_Array.remove(&self, int index) @cname("Fl_Tree_Item_remove");

extern fn int Fl_Tree_Item_Array.remove_item(
    &self, Fl_Tree_Item *item
) @cname("Fl_Tree_Item_Array_remove_item");

extern fn Fl_Tree_Item* Fl_Tree_Item_Array.at(&self, int index) @cname("Fl_Tree_Item_Array_at");

extern fn void Fl_Tree_Item_Array.delete(&self) @cname("Fl_Tree_Item_Array_delete");

extern fn void* Fl_Tree_Item.usericon(&self) @cname("Fl_Tree_Item_usericon");

extern fn void Fl_Tree_Item.set_usericon(&self, void *val) @cname("Fl_Tree_Item_set_usericon");
