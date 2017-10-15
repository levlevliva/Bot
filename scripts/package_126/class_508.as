package package_126
{
   import com.bigpoint.seafight.model.inventory.vo.harpoon.Harpoon_VO;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_96;
   import package_204.clip;
   import package_204.expand;
   import package_214.class_1559;
   import package_41.class_84;
   import package_6.class_14;
   import package_93.class_987;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_508 implements class_14
   {
      
      public static const name_3:class_508 = new class_508();
       
      
      private var var_646:int = 0;
      
      public var name_4:class_84;
      
      public function class_508(param1:class_84 = null)
      {
         super();
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
      }
      
      public function method_16() : int
      {
         return -8035;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 4 % 16 | (65535 & this.var_646) << 16 - 4 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 2 % 16 | (65535 & this.name_4.var_6) << 16 - 2 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-8035);
         param1.writeShort(65535 & ((65535 & 0) << 4 % 16 | (65535 & 0) >>> 16 - 4 % 16));
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 2 % 16 | (65535 & this.name_4.var_6) >>> 16 - 2 % 16));
         param1.writeDouble(this.name_4.name_4);
      }
   }
}
