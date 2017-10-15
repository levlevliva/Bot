package package_47
{
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_897;
   import package_116.class_405;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import package_92.class_336;
   import package_95.class_341;
   import spark.components.Group;
   
   public final class class_136 implements class_14
   {
      
      public static const name_3:class_136 = new class_136();
       
      
      private var var_646:int = 0;
      
      public var name_7:int = 0;
      
      public var name_18:Vector.<String>;
      
      public var name_5:int = 0;
      
      public function class_136(param1:int = 0, param2:int = 0, param3:Vector.<String> = null)
      {
         super();
         this.name_7 = param1;
         if(param3 == null)
         {
            this.name_18 = new Vector.<String>();
         }
         else
         {
            this.name_18 = param3;
         }
         this.name_5 = param2;
      }
      
      public function method_16() : int
      {
         return 4308;
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
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 1 % 16 | (65535 & this.var_646) << 16 - 1 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_7 = param1.readInt();
         this.name_7 = this.name_7 << 14 % 32 | this.name_7 >>> 32 - 14 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_18.length > 0)
         {
            this.name_18.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            this.name_18.push(param1.readUTF());
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:String = null;
         param1.writeShort(4308);
         param1.writeShort(65535 & ((65535 & 0) << 1 % 16 | (65535 & 0) >>> 16 - 1 % 16));
         param1.writeInt(this.name_7 >>> 14 % 32 | this.name_7 << 32 - 14 % 32);
         param1.writeByte(this.name_18.length);
         for each(_loc2_ in this.name_18)
         {
            param1.writeUTF(_loc2_);
         }
         param1.writeShort(this.name_5);
      }
   }
}
