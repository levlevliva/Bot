package package_7
{
   import com.bigpoint.seafight.model.vo.class_1031;
   import com.bigpoint.seafight.model.vo.class_1033;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildImageLoader;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import package_101.class_511;
   import package_14.class_47;
   import package_14.class_51;
   import package_18.class_530;
   import package_29.class_166;
   import package_41.class_89;
   import package_42.class_98;
   import package_54.class_1089;
   import package_6.class_14;
   import package_72.class_1080;
   import spark.components.Group;
   
   public final class class_329 implements class_14
   {
      
      public static const name_3:class_329 = new class_329();
       
      
      private var var_646:int = 0;
      
      public function class_329()
      {
         super();
      }
      
      public function method_16() : int
      {
         return 28013;
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
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 5 % 16 | (65535 & this.var_646) << 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(28013);
         param1.writeShort(65535 & ((65535 & 0) << 5 % 16 | (65535 & 0) >>> 16 - 5 % 16));
      }
   }
}
