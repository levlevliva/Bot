package package_90
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.view.popups.boarding.component.tabs.pets.PetTrainerStatsListItem;
   import com.bigpoint.seafight.view.popups.event.component.target;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMenuAnnouncementsTabVo;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import package_14.class_47;
   import package_20.class_33;
   import package_208.class_1584;
   import package_26.class_1086;
   import package_41.class_84;
   import package_45.class_110;
   import package_6.class_14;
   import spark.components.HGroup;
   import spark.primitives.BitmapImage;
   
   use namespace mx_internal;
   
   public final class class_379 implements class_14
   {
      
      public static const name_3:class_379 = new class_379();
       
      
      private var var_646:int = 0;
      
      public var var_107:int = 0;
      
      public var var_10:int = 0;
      
      public var var_52:class_84;
      
      public var var_903:int = 0;
      
      public var var_116:int = 0;
      
      public var name_5:int = 0;
      
      public var name_4:class_84;
      
      public var var_760:int = 0;
      
      public function class_379(param1:class_84 = null, param2:class_84 = null, param3:int = 0, param4:int = 0, param5:int = 0, param6:int = 0, param7:int = 0, param8:int = 0)
      {
         super();
         this.var_107 = param4;
         this.var_10 = param7;
         if(param2 == null)
         {
            this.var_52 = new class_84();
         }
         else
         {
            this.var_52 = param2;
         }
         this.var_903 = param6;
         this.var_116 = param3;
         this.name_5 = param8;
         if(param1 == null)
         {
            this.name_4 = new class_84();
         }
         else
         {
            this.name_4 = param1;
         }
         this.var_760 = param5;
      }
      
      public function method_16() : int
      {
         return 3453;
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
         return 17;
      }
      
      public function method_15(param1:IDataInput) : void
      {
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 15 % 16 | (65535 & this.var_646) >>> 16 - 15 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_107 = param1.readInt();
         this.var_107 = this.var_107 >>> 12 % 32 | this.var_107 << 32 - 12 % 32;
         this.var_10 = param1.readByte();
         this.var_10 = 255 & ((255 & this.var_10) << 8 % 8 | (255 & this.var_10) >>> 8 - 8 % 8);
         this.var_10 = this.var_10 > 127?int(this.var_10 - 256):int(this.var_10);
         this.var_52 = new class_84();
         this.var_52.var_6 = param1.readShort();
         this.var_52.var_6 = 65535 & ((65535 & this.var_52.var_6) >>> 1 % 16 | (65535 & this.var_52.var_6) << 16 - 1 % 16);
         this.var_52.var_6 = this.var_52.var_6 > 32767?int(this.var_52.var_6 - 65536):int(this.var_52.var_6);
         this.var_52.name_4 = param1.readDouble();
         this.var_903 = param1.readInt();
         this.var_903 = this.var_903 >>> 15 % 32 | this.var_903 << 32 - 15 % 32;
         this.var_116 = param1.readInt();
         this.var_116 = this.var_116 << 6 % 32 | this.var_116 >>> 32 - 6 % 32;
         this.name_5 = param1.readShort();
         this.name_4 = new class_84();
         this.name_4.var_6 = param1.readShort();
         this.name_4.var_6 = 65535 & ((65535 & this.name_4.var_6) >>> 1 % 16 | (65535 & this.name_4.var_6) << 16 - 1 % 16);
         this.name_4.var_6 = this.name_4.var_6 > 32767?int(this.name_4.var_6 - 65536):int(this.name_4.var_6);
         this.name_4.name_4 = param1.readDouble();
         this.var_760 = param1.readInt();
         this.var_760 = this.var_760 << 8 % 32 | this.var_760 >>> 32 - 8 % 32;
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         param1.writeShort(3453);
         param1.writeShort(65535 & ((65535 & 0) >>> 15 % 16 | (65535 & 0) << 16 - 15 % 16));
         param1.writeInt(this.var_107 << 12 % 32 | this.var_107 >>> 32 - 12 % 32);
         param1.writeByte(255 & ((255 & this.var_10) >>> 8 % 8 | (255 & this.var_10) << 8 - 8 % 8));
         param1.writeShort(65535 & ((65535 & this.var_52.var_6) << 1 % 16 | (65535 & this.var_52.var_6) >>> 16 - 1 % 16));
         param1.writeDouble(this.var_52.name_4);
         param1.writeInt(this.var_903 << 15 % 32 | this.var_903 >>> 32 - 15 % 32);
         param1.writeInt(this.var_116 >>> 6 % 32 | this.var_116 << 32 - 6 % 32);
         param1.writeShort(this.name_5);
         param1.writeShort(65535 & ((65535 & this.name_4.var_6) << 1 % 16 | (65535 & this.name_4.var_6) >>> 16 - 1 % 16));
         param1.writeDouble(this.name_4.name_4);
         param1.writeInt(this.var_760 >>> 8 % 32 | this.var_760 << 32 - 8 % 32);
      }
   }
}
