package package_99
{
   import com.bigpoint.seafight.model.inventory.vo.IInventory_VO;
   import com.bigpoint.seafight.model.vo.class_1520;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.event.component.EventMenuHeaderLeft;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildRankItemListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.logging.Log;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.seafight.com.module.guild.GuildIslandType;
   import net.bigpoint.seafight.com.module.ship.class_90;
   import package_112.class_622;
   import package_121.class_841;
   import package_122.class_428;
   import package_122.class_634;
   import package_14.class_47;
   import package_14.class_49;
   import package_34.class_1499;
   import package_41.class_84;
   import package_41.class_89;
   import package_41.class_93;
   import package_47.class_129;
   import package_49.class_137;
   import package_5.class_43;
   import package_6.class_14;
   import package_9.class_91;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   import spark.primitives.Rect;
   
   public final class class_639 implements class_14
   {
      
      public static const name_3:class_639 = new class_639();
       
      
      private var var_646:int = 0;
      
      public var var_178:int = 0;
      
      public var var_259:Vector.<class_137>;
      
      public var var_149:int = 0;
      
      public function class_639(param1:Vector.<class_137> = null, param2:int = 0, param3:int = 0)
      {
         super();
         this.var_178 = param3;
         if(param1 == null)
         {
            this.var_259 = new Vector.<class_137>();
         }
         else
         {
            this.var_259 = param1;
         }
         this.var_149 = param2;
      }
      
      public function method_16() : int
      {
         return 30338;
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
         var _loc4_:class_137 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 12 % 16 | (65535 & this.var_646) << 16 - 12 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.var_178 = param1.readShort();
         this.var_178 = 65535 & ((65535 & this.var_178) >>> 1 % 16 | (65535 & this.var_178) << 16 - 1 % 16);
         this.var_178 = this.var_178 > 32767?int(this.var_178 - 65536):int(this.var_178);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_259.length > 0)
         {
            this.var_259.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_137(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_259.push(_loc4_);
            _loc2_++;
         }
         this.var_149 = param1.readShort();
         this.var_149 = 65535 & ((65535 & this.var_149) << 14 % 16 | (65535 & this.var_149) >>> 16 - 14 % 16);
         this.var_149 = this.var_149 > 32767?int(this.var_149 - 65536):int(this.var_149);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_137 = null;
         param1.writeShort(30338);
         param1.writeShort(65535 & ((65535 & 0) << 12 % 16 | (65535 & 0) >>> 16 - 12 % 16));
         param1.writeShort(65535 & ((65535 & this.var_178) << 1 % 16 | (65535 & this.var_178) >>> 16 - 1 % 16));
         param1.writeByte(this.var_259.length);
         for each(_loc2_ in this.var_259)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_149) >>> 14 % 16 | (65535 & this.var_149) << 16 - 14 % 16));
      }
   }
}
