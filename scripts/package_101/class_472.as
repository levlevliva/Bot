package package_101
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameMateysListItemRenderer;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import package_14.class_47;
   import package_26.class_142;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1455;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_41;
   import package_6.class_14;
   import package_9.class_17;
   import package_9.class_91;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   import spark.primitives.Rect;
   
   public final class class_472 implements class_14
   {
      
      public static const name_3:class_472 = new class_472();
       
      
      private var var_646:int = 0;
      
      public var var_20:Number = 0;
      
      public var var_313:Vector.<class_84>;
      
      public var var_33:int = 0;
      
      public function class_472(param1:Vector.<class_84> = null, param2:Number = 0, param3:int = 0)
      {
         super();
         this.var_20 = param2;
         if(param1 == null)
         {
            this.var_313 = new Vector.<class_84>();
         }
         else
         {
            this.var_313 = param1;
         }
         this.var_33 = param3;
      }
      
      public function method_16() : int
      {
         return 29796;
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
         return 16;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_84 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_20 = param1.readDouble();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_313.length > 0)
         {
            this.var_313.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_84(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_313.push(_loc4_);
            _loc2_++;
         }
         this.var_33 = param1.readInt();
         this.var_33 = this.var_33 << 16 % 32 | this.var_33 >>> 32 - 16 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_84 = null;
         param1.writeShort(29796);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeDouble(this.var_20);
         param1.writeByte(this.var_313.length);
         for each(_loc2_ in this.var_313)
         {
            _loc2_.method_14(param1);
         }
         param1.writeInt(this.var_33 >>> 16 % 32 | this.var_33 << 32 - 16 % 32);
      }
   }
}
