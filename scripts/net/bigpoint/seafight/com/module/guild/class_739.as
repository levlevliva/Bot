package net.bigpoint.seafight.com.module.guild
{
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bit101.components.ScrollPane;
   import com.greensock.TweenMax;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.text.StyleSheet;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_220.class_1601;
   import package_41.class_93;
   import package_51.class_148;
   import package_54.class_1006;
   import package_6.class_14;
   
   public final class class_739 implements class_14
   {
      
      public static const name_3:class_739 = new class_739();
       
      
      private var var_646:int = 0;
      
      public var name_74:Vector.<class_817>;
      
      public function class_739(param1:Vector.<class_817> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_74 = new Vector.<class_817>();
         }
         else
         {
            this.name_74 = param1;
         }
      }
      
      public function method_16() : int
      {
         return 28421;
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
         return 4;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_817 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_74.length > 0)
         {
            this.name_74.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_817(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_74.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_817 = null;
         param1.writeShort(28421);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeByte(this.name_74.length);
         for each(_loc2_ in this.name_74)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
