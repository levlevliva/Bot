package package_106
{
   import com.bigpoint.seafight.class_58;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.net.events.MapScrollEvent;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.BriskImg;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.components.SelectableLabel;
   import com.bigpoint.seafight.view.common.components.shipcoverflow.components.target;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.RadioButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.groupwindow.invitationpopup.OpenGroupInvitationWindowCommand;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.tabs.GuildPendingMemberListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.MemberRankAssignationVo;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.itemrenderers.GuildRelationsComboBoxListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.component.ShipEquipmentNavigator;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColorStroke;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   import package_101.class_357;
   import package_111.class_696;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_166.class_1502;
   import package_17.class_29;
   import package_184.class_1135;
   import package_20.class_33;
   import package_204.class_1531;
   import package_26.class_204;
   import package_3.class_393;
   import package_40.class_334;
   import package_41.class_84;
   import package_41.class_93;
   import package_46.class_1224;
   import package_49.class_137;
   import package_5.class_214;
   import package_5.class_22;
   import package_5.class_41;
   import package_5.class_43;
   import package_6.class_14;
   import package_69.class_978;
   import package_92.class_1278;
   import package_92.class_944;
   import spark.components.Group;
   import spark.components.List;
   import spark.filters.DropShadowFilter;
   import spark.primitives.Graphic;
   import spark.primitives.Rect;
   
   use namespace mx_internal;
   
   public final class class_783 implements class_14
   {
      
      public static const name_3:class_783 = new class_783();
       
      
      private var var_646:int = 0;
      
      public var name_19:int = 0;
      
      public var var_13:int = 0;
      
      public var name_5:String = "";
      
      public var var_93:Vector.<class_830>;
      
      public var var_22:int = 0;
      
      public function class_783(param1:int = 0, param2:Vector.<class_830> = null, param3:String = "", param4:int = 0, param5:int = 0)
      {
         super();
         this.name_19 = param4;
         this.var_13 = param1;
         this.name_5 = param3;
         if(param2 == null)
         {
            this.var_93 = new Vector.<class_830>();
         }
         else
         {
            this.var_93 = param2;
         }
         this.var_22 = param5;
      }
      
      public function method_16() : int
      {
         return 24352;
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
         var _loc4_:class_830 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) << 13 % 16 | (65535 & this.var_646) >>> 16 - 13 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         this.name_19 = param1.readInt();
         this.name_19 = this.name_19 >>> 4 % 32 | this.name_19 << 32 - 4 % 32;
         this.var_13 = param1.readInt();
         this.var_13 = this.var_13 >>> 11 % 32 | this.var_13 << 32 - 11 % 32;
         this.name_5 = param1.readUTF();
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.var_93.length > 0)
         {
            this.var_93.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_830(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.var_93.push(_loc4_);
            _loc2_++;
         }
         this.var_22 = param1.readShort();
         this.var_22 = 65535 & ((65535 & this.var_22) >>> 1 % 16 | (65535 & this.var_22) << 16 - 1 % 16);
         this.var_22 = this.var_22 > 32767?int(this.var_22 - 65536):int(this.var_22);
      }
      
      public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_830 = null;
         param1.writeShort(24352);
         param1.writeShort(65535 & ((65535 & 0) >>> 13 % 16 | (65535 & 0) << 16 - 13 % 16));
         param1.writeInt(this.name_19 << 4 % 32 | this.name_19 >>> 32 - 4 % 32);
         param1.writeInt(this.var_13 << 11 % 32 | this.var_13 >>> 32 - 11 % 32);
         param1.writeUTF(this.name_5);
         param1.writeByte(this.var_93.length);
         for each(_loc2_ in this.var_93)
         {
            _loc2_.method_14(param1);
         }
         param1.writeShort(65535 & ((65535 & this.var_22) << 1 % 16 | (65535 & this.var_22) >>> 16 - 1 % 16));
      }
   }
}
