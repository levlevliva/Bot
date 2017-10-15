package package_3
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.skins.CommonEquipmentListSkin;
   import com.bigpoint.seafight.view.popups.castle.component.CastleWindowBoosterItem;
   import com.bigpoint.seafight.view.popups.castle.vo.CastleBoosterVo;
   import com.bigpoint.seafight.view.popups.common.table.ListItemSelectionBg;
   import com.bigpoint.seafight.view.popups.guildmenu.safehaven.vo.GuildMenuFoundTabVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenShipEquipmentWindow;
   import com.greensock.TweenLite;
   import com.greensock.events.LoaderEvent;
   import com.oaxoa.fx.Lightning;
   import com.oaxoa.fx.LightningFadeType;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.getTimer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.events.FlexEvent;
   import mx.events.FlexMouseEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.gems.class_593;
   import net.bigpoint.seafight.com.module.gems.class_772;
   import net.bigpoint.seafight.com.module.guild.class_1148;
   import org.osflash.signals.Signal;
   import package_100.class_356;
   import package_111.class_391;
   import package_111.class_425;
   import package_111.class_446;
   import package_111.class_466;
   import package_117.class_407;
   import package_117.class_477;
   import package_121.class_841;
   import package_134.class_504;
   import package_139.class_532;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_140.class_540;
   import package_15.class_273;
   import package_15.class_48;
   import package_151.class_594;
   import package_151.class_831;
   import package_16.class_28;
   import package_165.class_951;
   import package_165.class_953;
   import package_171.class_1275;
   import package_171.class_1316;
   import package_171.class_1322;
   import package_171.class_1325;
   import package_171.class_981;
   import package_18.class_392;
   import package_182.class_1324;
   import package_185.class_1136;
   import package_190.class_1181;
   import package_20.class_33;
   import package_26.class_960;
   import package_39.class_1366;
   import package_41.class_103;
   import package_41.class_84;
   import package_45.class_110;
   import package_46.class_1323;
   import package_47.class_692;
   import package_5.class_1239;
   import package_5.class_214;
   import package_57.class_171;
   import package_6.class_14;
   import package_65.class_188;
   import package_69.class_978;
   import package_7.class_1039;
   import package_7.class_104;
   import package_70.class_196;
   import package_76.class_279;
   import package_8.class_1240;
   import package_8.class_1315;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.RichEditableText;
   import spark.components.VGroup;
   import spark.primitives.BitmapImage;
   
   public final class class_514 extends class_10
   {
       
      
      private var var_1217:class_188;
      
      private var var_2339:class_196;
      
      private var var_1216:class_1316;
      
      private var var_2385:class_1275;
      
      private var var_1491:class_1325;
      
      public var var_679:Signal;
      
      public var var_1097:Signal;
      
      public var var_2336:Signal;
      
      public var var_1679:Signal;
      
      private var var_628:class_110;
      
      public function class_514()
      {
         super();
         method_23(class_540.name_3,this.method_1664);
         method_23(class_532.name_3,this.method_1977);
         method_23(class_104.name_3,this.method_1854);
         method_23(class_425.name_3,this.method_1048);
         method_23(class_466.name_3,this.onPresetModificationFailureMessage);
         method_23(class_446.name_3,this.onPresetModificationSuccessMessage);
         method_23(class_391.name_3,this.method_2171);
         method_23(class_356.name_3,this.method_2423);
         method_23(class_407.name_3,this.method_2435);
         method_23(class_477.name_3,this.method_2387);
         this.var_1217 = class_33.name_12.name_104;
         this.var_2339 = class_33.name_12.method_127;
         this.var_1216 = class_1316.method_21();
         this.var_2385 = class_1275.method_21();
         this.var_2336 = new Signal(int);
         this.var_1679 = new Signal(int);
         this.var_1097 = new Signal(String,int);
         this.var_679 = new Signal(int);
         this.var_628 = class_33.name_12.method_41;
      }
      
      private final function method_2435(param1:class_14) : void
      {
         var _loc2_:class_407 = param1 as class_407;
         this.var_2336.dispatch(_loc2_.name_15);
      }
      
      private final function method_2387(param1:class_14) : void
      {
         var _loc2_:class_477 = param1 as class_477;
         this.var_1679.dispatch(_loc2_.name_15);
      }
      
      private final function method_2423(param1:class_14) : void
      {
         var _loc2_:class_356 = param1 as class_356;
         this.var_1097.dispatch(_loc2_.var_1591,_loc2_.var_32);
      }
      
      private final function onPresetModificationSuccessMessage(param1:class_14) : void
      {
         var _loc2_:class_446 = param1 as class_446;
         this.var_679.dispatch(class_1324.const_1116,_loc2_.name_29);
      }
      
      private final function onPresetModificationFailureMessage(param1:class_14) : void
      {
         this.var_679.dispatch(class_1324.const_1075);
      }
      
      private final function method_2171(param1:class_14) : void
      {
         class_1322.method_21().method_55(param1);
      }
      
      private final function method_1048(param1:class_14) : void
      {
         this.var_2385.method_55(param1);
      }
      
      private final function method_1664(param1:class_14) : void
      {
         var _loc2_:class_540 = param1 as class_540;
         if(!this.var_1491)
         {
            this.var_1491 = class_1325.method_21();
         }
         this.var_1491.method_55(param1);
      }
      
      private final function method_1854(param1:class_14) : void
      {
         var _loc2_:class_104 = param1 as class_104;
         this.var_2339.method_2819(_loc2_.name_5);
         class_1323.name_3.method_116(_loc2_.name_5);
         if(_loc2_.name_5 == class_1039.const_98)
         {
            this.var_1217.method_1208 = true;
         }
      }
      
      private final function method_1977(param1:class_14) : void
      {
         class_1313.name_12().method_630 = param1 as class_532;
         StatelessCMD.invoke(CmdSL_OpenShipEquipmentWindow);
      }
   }
}
