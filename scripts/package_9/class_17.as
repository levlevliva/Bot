package package_9
{
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuMembersTabVo;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import mx.logging.Log;
   import package_14.class_102;
   import package_152.class_937;
   import package_20.class_33;
   import package_205.class_1353;
   import package_208.class_1585;
   import package_41.class_93;
   import package_45.class_110;
   import package_6.class_14;
   import package_72.class_1080;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   public final class class_17 implements class_14
   {
      
      public static const name_3:class_17 = new class_17();
       
      
      private var var_646:int = 0;
      
      public var var_205:String = "";
      
      public var name_11:int = 0;
      
      public var var_1273:Boolean = false;
      
      public var var_36:int = 0;
      
      public var var_31:int = 0;
      
      public var var_744:int = 0;
      
      public var var_693:Vector.<class_120>;
      
      public var name_5:int = 0;
      
      public function class_17(param1:int = 0, param2:String = "", param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:Vector.<class_120> = null, param8:Boolean = false)
      {
         super();
         this.var_205 = param2;
         this.name_11 = param1;
         this.var_1273 = param8;
         this.var_36 = param4;
         this.var_31 = param5;
         this.var_744 = param3;
         if(param7 == null)
         {
            this.var_693 = new Vector.<class_120>();
         }
         else
         {
            this.var_693 = param7;
         }
         this.name_5 = param6;
      }
      
      public function method_16() : int
      {
         return 22559;
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
         return 13;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_120 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 5 % 16 | (65535 & this.var_646) >>> 16 - 5 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_205 = param1.readUTF();
         this.name_11 = param1.readShort();
         this.name_11 = 65535 & ((65535 & this.name_11) << 5 % 16 | (65535 & this.name_11) >>> 16 - 5 % 16);
         this.name_11 = this.name_11 > 32767?int(this.name_11 - 65536):int(this.name_11);
         this.var_1273 = param1.readBoolean();
         this.var_36 = param1.readShort();
         this.var_36 = 65535 & ((65535 & this.var_36) >>> 8 % 16 | (65535 & this.var_36) << 16 - 8 % 16);
         this.var_36 = this.var_36 > 32767?int(this.var_36 - 65536):int(this.var_36);
         this.var_31 = param1.readShort();
         this.var_31 = 65535 & ((65535 & this.var_31) >>> 7 % 16 | (65535 & this.var_31) << 16 - 7 % 16);
         this.var_31 = this.var_31 > 32767?int(this.var_31 - 65536):int(this.var_31);
         this.var_744 = param1.readShort();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_693.length > 0)
         {
            this.var_693.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readShort();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_120(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_693.push(_loc4_);
            _loc2_++;
         }
         this.name_5 = param1.readShort();
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_120 = null;
         param1.writeShort(22559);
         param1.writeShort(65535 & ((65535 & 0) >>> 5 % 16 | (65535 & 0) << 16 - 5 % 16));
         param1.writeUTF(this.var_205);
         param1.writeShort(65535 & ((65535 & this.name_11) >>> 5 % 16 | (65535 & this.name_11) << 16 - 5 % 16));
         param1.writeBoolean(this.var_1273);
         param1.writeShort(65535 & ((65535 & this.var_36) << 8 % 16 | (65535 & this.var_36) >>> 16 - 8 % 16));
         param1.writeShort(65535 & ((65535 & this.var_31) << 7 % 16 | (65535 & this.var_31) >>> 16 - 7 % 16));
         param1.writeShort(this.var_744);
         param1.writeShort(this.var_693.length);
         for each(_loc2_ in this.var_693)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(this.name_5);
      }
   }
}
