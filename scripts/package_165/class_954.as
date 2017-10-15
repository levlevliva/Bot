package package_165
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.mainmenu.MainMenuDropdownButton;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.colorpicker.ColorPicker;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.IGemsInventory;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.common.GuildRankRightCheckBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bit101.components.ColorChooser;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.events.DragEvent;
   import mx.events.SandboxMouseEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import package_123.class_1032;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_16.class_28;
   import package_166.class_1344;
   import package_166.class_1345;
   import package_166.class_1347;
   import package_166.class_971;
   import package_171.class_1275;
   import package_20.class_109;
   import package_92.class_1278;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public class class_954 extends class_952 implements class_953
   {
       
      
      protected var var_1482:class_1345;
      
      private var var_65:class_1347;
      
      public function class_954(param1:class_173)
      {
         super(param1);
         this.var_1482 = method_588();
         this.method_34(param1);
      }
      
      public function method_2582(param1:int) : void
      {
         if(!this.var_1482.parent && param1 > 0)
         {
            addChild(this.var_1482);
         }
         this.var_1482.method_733(param1);
      }
      
      override public function method_34(param1:class_172) : void
      {
         super.method_34(param1);
         var _loc2_:class_173 = param1 as class_173;
         var _loc3_:Boolean = _loc2_.var_383 != null && _loc2_.var_383.name_4 != 0 && !class_177.method_52(_loc2_.var_383,class_51.var_21);
         this.method_593(_loc2_.var_44,_loc2_.var_154,!!_loc3_?int(class_1344.const_853):int(class_1344.const_600));
         if(_loc2_.var_764 != class_1032.const_8)
         {
            if(!this.var_65)
            {
               addChild(this.var_65 = new class_1347());
            }
            this.var_65.y = 28;
            this.var_65.method_34(_loc2_.var_764);
         }
         else if(this.method_382(this.var_65))
         {
            this.var_65 = null;
         }
      }
      
      override protected function method_593(param1:String, param2:String = null, param3:int = 0) : void
      {
         super.method_593(param1,param2,param3);
         this.method_1378();
      }
      
      override protected function method_884(param1:String) : String
      {
         param1 = super.method_884(param1);
         param1 = method_692(param1);
         return param1;
      }
      
      private final function method_382(param1:DisplayObject) : Boolean
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
            return true;
         }
         return false;
      }
   }
}
