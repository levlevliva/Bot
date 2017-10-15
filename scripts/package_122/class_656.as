package package_122
{
   import com.bigpoint.seafight.view.popups.common.TextInput;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildCurrencyVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.InputComboBox;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.IUIComponent;
   import mx.graphics.LinearGradientStroke;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_41.class_84;
   import package_41.class_93;
   import package_49.class_137;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class class_656 implements class_14
   {
      
      public static const name_3:class_656 = new class_656();
       
      
      private var var_646:int = 0;
      
      public var var_149:int = 0;
      
      public var var_178:int = 0;
      
      public var var_339:Vector.<class_137>;
      
      public function class_656(param1:int = 0, param2:int = 0, param3:Vector.<class_137> = null)
      {
         super();
         this.var_149 = param1;
         this.var_178 = param2;
         if(param3 == null)
         {
            this.var_339 = new Vector.<class_137>();
         }
         else
         {
            this.var_339 = param3;
         }
      }
      
      public function method_16() : int
      {
         return 23627;
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
         return 12;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_149 = param1.readInt();
         this.var_149 = this.var_149 >>> 13 % 32 | this.var_149 << 32 - 13 % 32;
         this.var_178 = param1.readInt();
         this.var_178 = this.var_178 << 14 % 32 | this.var_178 >>> 32 - 14 % 32;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_339.length > 0)
         {
            this.var_339.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_339.push(_loc4_);
            _loc2_++;
         }
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         param1.writeShort(23627);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         param1.writeInt(this.var_149 << 13 % 32 | this.var_149 >>> 32 - 13 % 32);
         param1.writeInt(this.var_178 >>> 14 % 32 | this.var_178 << 32 - 14 % 32);
         param1.writeByte(this.var_339.length);
         for each(_loc2_ in this.var_339)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
