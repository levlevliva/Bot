package package_99
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.inventory.vo.crew.DefaultCrew_VO;
   import com.bigpoint.seafight.model.inventory.vo.crew.ItemVO;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.seafight.com.module.event.class_616;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_107.class_380;
   import package_107.class_693;
   import package_14.class_47;
   import package_14.class_87;
   import package_15.class_48;
   import package_174.class_1592;
   import package_22.class_423;
   import package_22.class_655;
   import package_41.class_84;
   import package_41.class_93;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.effects.Rotate3D;
   import spark.filters.GlowFilter;
   
   public final class class_853 implements class_14
   {
      
      public static const name_3:class_853 = new class_853();
       
      
      private var var_646:int = 0;
      
      public var var_15:class_786;
      
      public function class_853(param1:class_786 = null)
      {
         super();
         if(param1 == null)
         {
            this.var_15 = new class_786();
         }
         else
         {
            this.var_15 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -16783;
      }
      
      public function method_17() : int
      {
         return 0;
      }
      
      public function method_18() : int
      {
         return this.var_646;
      }
      
      public function method_19() : int
      {
         return 0;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 14 % 16 | (65535 & this.var_646) << 16 - 14 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_15 = class_786(class_93.method_26().method_25(param1.readShort()));
         this.var_15.method_15(param1);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-16783);
         param1.writeShort(65535 & ((65535 & 0) << 14 % 16 | (65535 & 0) >>> 16 - 14 % 16));
         this.var_15.method_14(param1);
      }
   }
}
