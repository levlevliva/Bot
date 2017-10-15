package package_93
{
   import com.bigpoint.seafight.model.vo.class_1098;
   import com.bigpoint.seafight.net.events.class_1097;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_181;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.common.table.TableSkinInnerClass2;
   import com.bigpoint.seafight.view.popups.event.modules.common.BulletText;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildSearchListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentIslandsListItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildProfileComponentVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildSearchListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.gemoverview.GemOverview;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.URLVariables;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import mx.core.IFlexDisplayObject;
   import mx.core.IVisualElement;
   import mx.managers.PopUpManager;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.getDefinitionNames;
   import net.bigpoint.seafight.com.module.guild.class_678;
   import net.bigpoint.seafight.com.module.guild.class_758;
   import net.bigpoint.seafight.com.module.guild.class_900;
   import package_102.class_359;
   import package_14.class_25;
   import package_14.class_51;
   import package_143.class_542;
   import package_42.class_99;
   import package_6.class_14;
   import package_72.class_1442;
   import package_72.class_203;
   import package_9.class_76;
   import spark.components.Group;
   import spark.components.HGroup;
   
   public final class class_812 extends class_339
   {
      
      public static const name_3:class_812 = new class_812();
       
      
      private var var_646:int = 0;
      
      public var name_63:int = 0;
      
      public var var_1649:Number = 0;
      
      public var name_62:Vector.<int>;
      
      public var name_71:int = 0;
      
      public var name_65:Vector.<int>;
      
      public var name_77:int = 0;
      
      public function class_812(param1:Number = 0, param2:int = 0, param3:int = 0, param4:Vector.<int> = null, param5:Vector.<int> = null, param6:int = 0)
      {
         super();
         this.name_63 = param6;
         this.var_1649 = param1;
         if(param5 == null)
         {
            this.name_62 = new Vector.<int>();
         }
         else
         {
            this.name_62 = param5;
         }
         this.name_71 = param3;
         if(param4 == null)
         {
            this.name_65 = new Vector.<int>();
         }
         else
         {
            this.name_65 = param4;
         }
         this.name_77 = param2;
      }
      
      override public function method_16() : int
      {
         return 29002;
      }
      
      override public function method_17() : int
      {
         return 0;
      }
      
      override public function method_18() : int
      {
         return this.var_646;
      }
      
      override public function method_19() : int
      {
         return 24;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 7 % 16 | (65535 & this.var_646) << 16 - 7 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         this.name_63 = param1.readInt();
         this.name_63 = this.name_63 << 7 % 32 | this.name_63 >>> 32 - 7 % 32;
         this.var_1649 = param1.readFloat();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_62.length > 0)
         {
            this.name_62.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = int(param1.readInt());
            _loc4_ = _loc4_ << 1 % 32 | _loc4_ >>> 32 - 1 % 32;
            this.name_62.push(_loc4_);
            _loc2_++;
         }
         this.name_71 = param1.readInt();
         this.name_71 = this.name_71 << 14 % 32 | this.name_71 >>> 32 - 14 % 32;
         while(this.name_65.length > 0)
         {
            this.name_65.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc5_ = int(param1.readShort());
            _loc5_ = 65535 & ((65535 & _loc5_) << 16 % 16 | (65535 & _loc5_) >>> 16 - 16 % 16);
            _loc5_ = int(_loc5_ > 32767?int(_loc5_ - 65536):int(_loc5_));
            this.name_65.push(_loc5_);
            _loc2_++;
         }
         this.name_77 = param1.readInt();
         this.name_77 = this.name_77 >>> 15 % 32 | this.name_77 << 32 - 15 % 32;
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         param1.writeShort(29002);
         param1.writeShort(65535 & ((65535 & 0) << 7 % 16 | (65535 & 0) >>> 16 - 7 % 16));
         super.method_14(param1);
         param1.writeInt(this.name_63 >>> 7 % 32 | this.name_63 << 32 - 7 % 32);
         param1.writeFloat(this.var_1649);
         param1.writeByte(this.name_62.length);
         for each(_loc2_ in this.name_62)
         {
            param1.writeInt(_loc2_ >>> 1 % 32 | _loc2_ << 32 - 1 % 32);
         }
         param1.writeInt(this.name_71 >>> 14 % 32 | this.name_71 << 32 - 14 % 32);
         param1.writeByte(this.name_65.length);
         for each(_loc3_ in this.name_65)
         {
            param1.writeShort(65535 & ((65535 & _loc3_) >>> 16 % 16 | (65535 & _loc3_) << 16 - 16 % 16));
         }
         param1.writeInt(this.name_77 << 15 % 32 | this.name_77 >>> 32 - 15 % 32);
      }
   }
}
