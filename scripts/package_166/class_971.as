package package_166
{
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.center;
   import com.bigpoint.seafight.tools.class_946;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_Label;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.BlueButton;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.constants.GuildRankIcon;
   import com.bigpoint.seafight.view.popups.quest.npc.component.modules.IContentModuleVo;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestListVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsStatsComponent;
   import com.bigpoint.seafight.view.userInterface.class_216;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.ToolTipEvent;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import package_104.class_448;
   import package_130.class_1143;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_170.class_979;
   import package_26.class_1088;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_12;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_43;
   import package_6.class_14;
   import package_8.class_16;
   import package_88.class_1093;
   import package_88.class_290;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.primitives.Rect;
   
   public final class class_971
   {
       
      
      public var var_2007:Number = 45;
      
      private var var_716:Array;
      
      private var var_449:Sprite;
      
      public function class_971()
      {
         this.var_716 = new Array();
         super();
      }
      
      public final function method_323(param1:Sprite, param2:Sprite, param3:Number, param4:Number) : void
      {
         this.var_449 = param2;
         var _loc5_:class_1352 = new class_1352(param1,param3,param4);
         this.method_1120(_loc5_);
         this.var_716.push(_loc5_);
         param2.addChild(param1);
      }
      
      public final function method_54() : void
      {
         var c:class_1352 = null;
         var i:int = 0;
         while(i < this.var_716.length)
         {
            try
            {
               c = this.var_716[i] as class_1352;
               c.name_69.parent.removeChild(c.name_69);
            }
            catch(e:Error)
            {
            }
            i++;
         }
         this.var_716 = new Array();
      }
      
      public final function method_1364() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.var_716.length)
         {
            this.method_1120(this.var_716[_loc1_]);
            _loc1_++;
         }
      }
      
      private final function method_1120(param1:class_1352) : void
      {
         param1.name_69.x = param1.var_2102 * Math.cos(this.var_2007 * Math.PI / 180);
         param1.name_69.y = 0.7 * (param1.var_2102 * Math.sin(this.var_2007 * Math.PI / 180) - param1.var_2239) + 5;
      }
      
      public function get name_48() : int
      {
         return this.var_716.length;
      }
      
      public final function method_2131(param1:String) : int
      {
         var _loc3_:class_1352 = null;
         var _loc2_:int = 0;
         for each(_loc3_ in this.var_716)
         {
            if(_loc3_.name_69.name == param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
   }
}
