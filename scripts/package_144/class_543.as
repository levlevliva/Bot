package package_144
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.delay;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.event.modules.common.CountItem;
   import com.bigpoint.seafight.view.popups.event.modules.skins.target;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.component.tabs.GuildMenuSearchTab;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.controllers.GuildMenuSearchTabController;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import com.greensock.TweenMax;
   import flash.display.Sprite;
   import flash.events.HTTPStatusEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getDefinitionByName;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.containers.Form;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_127.class_486;
   import package_14.class_47;
   import package_14.class_88;
   import package_141.class_804;
   import package_154.class_842;
   import package_156.class_654;
   import package_170.class_979;
   import package_183.class_1453;
   import package_204.thiz;
   import package_23.class_42;
   import package_28.class_56;
   import package_29.class_565;
   import package_41.class_93;
   import package_48.class_1534;
   import package_49.class_137;
   import package_5.class_984;
   import package_51.class_1355;
   import package_6.class_14;
   import package_93.class_339;
   import spark.components.DataGroup;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   use namespace mx_internal;
   
   public final class class_543 extends class_339
   {
      
      public static const name_3:class_543 = new class_543();
       
      
      private var var_646:int = 0;
      
      public var name_9:Vector.<class_886>;
      
      public function class_543(param1:Vector.<class_886> = null)
      {
         super();
         if(param1 == null)
         {
            this.name_9 = new Vector.<class_886>();
         }
         else
         {
            this.name_9 = param1;
         }
      }
      
      override public function method_16() : int
      {
         return -21360;
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
         return 4;
      }
      
      override public function method_15(param1:IDataInput) : void
      {
         var _loc4_:class_886 = null;
         this.var_646 = param1.readShort();
         this.var_646 = 65535 & ((65535 & this.var_646) >>> 10 % 16 | (65535 & this.var_646) << 16 - 10 % 16);
         this.var_646 = this.var_646 > 32767?int(this.var_646 - 65536):int(this.var_646);
         param1.readShort();
         super.method_15(param1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(this.name_9.length > 0)
         {
            this.name_9.pop();
         }
         _loc2_ = 0;
         _loc3_ = param1.readByte();
         while(_loc2_ < _loc3_)
         {
            _loc4_ = class_886(class_93.method_26().method_25(param1.readShort()));
            _loc4_.method_15(param1);
            this.name_9.push(_loc4_);
            _loc2_++;
         }
      }
      
      override public function method_14(param1:IDataOutput) : void
      {
         var _loc2_:class_886 = null;
         param1.writeShort(-21360);
         param1.writeShort(65535 & ((65535 & 0) << 10 % 16 | (65535 & 0) >>> 16 - 10 % 16));
         super.method_14(param1);
         param1.writeByte(this.name_9.length);
         for each(_loc2_ in this.name_9)
         {
            _loc2_.method_14(param1);
         }
      }
   }
}
