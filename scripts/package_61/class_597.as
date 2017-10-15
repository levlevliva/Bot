package package_61
{
   import com.bigpoint.seafight.model.inventory.vo.deckpreset.DeckSailsPreset_VO;
   import com.bigpoint.seafight.tools.class_127;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.BorderType1;
   import com.bigpoint.seafight.view.popups.common.BorderType2;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.event.component.EventIcon;
   import com.bigpoint.seafight.view.popups.event.component.EventMenu;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.RenameVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverviewContentMask;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.target;
   import com.bit101.components.Style;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.mx_internal;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import package_14.class_47;
   import package_15.class_273;
   import package_152.class_664;
   import package_166.class_961;
   import package_26.class_1319;
   import package_3.class_378;
   import package_36.class_1417;
   import package_41.class_84;
   import package_5.class_984;
   import package_6.class_14;
   import package_72.class_1442;
   import package_95.class_341;
   import package_97.class_409;
   import package_99.class_786;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.VGroup;
   import spark.components.gridClasses.GridColumn;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_597 implements class_14
   {
      
      public static const name_3:class_597 = 