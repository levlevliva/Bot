package package_22
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuButton;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPreconditionItemVo;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import package_111.class_696;
   import package_14.class_47;
   import package_2.class_65;
   import package_214.class_1559;
   import package_34.class_1499;
   import package_5.class_214;
   import package_52.class_1083;
   import package_54.class_319;
   import package_6.class_14;
   import package_92.class_995;
   import spark.components.Group;
   import spark.components.TextInput;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_463 implements class_14
   {
      
      public static const name_3:class_463 = new class_463();
       
      
      private var var_646:int = 0;
      
      public var var_1750:Number = 0;
      
      public function class_463(param1:Number = 0)
      {
         super();
         this.var_1750 = param1;
      }
      
      public function method_16() : int
      {
         return -30365;
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
         return 8;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_1750 = param1.readDouble();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(-30365);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeDouble(this.var_1750);
      }
   }
}
