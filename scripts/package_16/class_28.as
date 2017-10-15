package package_16
{
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.AuxConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.DefaultAuxConf_VO;
   import com.bigpoint.seafight.model.vo.class_1518;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_1244;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.dragging.commands.DragDropMoveCommand;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.event.component.ToggleButtonGroup;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagInventory;
   import com.bigpoint.seafight.view.popups.guildapplication.vo.GuildApplyPopupVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.GuildIslandMenuOverviewTab;
   import com.bigpoint.seafight.view.popups.guildmenu.island.controllers.GuildIslandMenuOverviewTabController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildPendingMemberListItemVo;
   import com.bigpoint.seafight.view.popups.shipequipment.component.sail.SailsInventory;
   import com.bigpoint.seafight.view.userInterface.SubMenuContainer;
   import com.bigpoint.seafight.view.userInterface.class_150;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.Text;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenGuildApplyWindow;
   import com.greensock.events.LoaderEvent;
   import com.greensock.loading.LoaderStatus;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.Socket;
   import flash.net.URLVariables;
   import flash.system.Security;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import flash.utils.getQualifiedClassName;
   import flash.utils.getTimer;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.IVisualElement;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_1475;
   import net.bigpoint.seafight.com.module.guild.class_459;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_108.class_596;
   import package_108.class_755;
   import package_118.class_1445;
   import package_118.class_539;
   import package_138.class_523;
   import package_138.class_704;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_51;
   import package_143.class_1040;
   import package_15.class_27;
   import package_17.class_54;
   import package_2.class_65;
   import package_20.class_982;
   import package_28.class_56;
   import package_29.class_143;
   import package_29.class_144;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_176;
   import package_51.class_1355;
   import package_54.class_160;
   import package_54.class_162;
   import package_6.class_14;
   import package_7.class_35;
   import package_7.class_55;
   import package_7.class_74;
   import package_72.class_1080;
   import package_72.class_1442;
   import package_9.class_120;
   import package_98.class_777;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.Label;
   import spark.components.List;
   import spark.components.VGroup;
   import spark.primitives.Line;
   import spark.primitives.Rect;
   
   public final class class_28 extends class_27
   {
      
      private static const const_1802:int = 3000;
      
      private static const const_1895:int = 3;
      
      private static const const_796:class_56 = new class_56(class_56.const_757);
      
      private static const const_643:class_56 = new class_56(class_56.const_51);
      
      private static const const_792:class_56 = new class_56(class_56.const_500);
      
      private static const const_711:class_56 = new class_56(class_56.const_1141);
      
      private static const const_779:class_56 = new class_56(class_56.const_1028);
      
      private static var name_55:class_28;
       
      
      private var var_128:Socket;
      
      private var var_1247:ByteArray;
      
      private var var_1066:ByteArray;
      
      private var var_1019:int;
      
      private var var_2269:class_93;
      
      private var var_1045:class_65;
      
      private var var_728:Timer;
      
      private var var_1460:Boolean;
      
      private var var_1242:int;
      
      private var var_1640:Boolean;
      
      private var var_1231:Boolean;
      
      private var var_1422:Vector.<class_14>;
      
      public function class_28()
      {
         super();
      }
      
      public static function get name_3() : class_28
      {
         if(!name_55)
         {
            throw new Error("Init was not called yet");
         }
         return name_55;
      }
      
      public final function name_16(param1:class_65) : void
      {
         if(name_55)
         {
            throw new Error("Init is called second time");
         }
         name_55 = this;
         Security.allowDomain("package_1");
         Security.loadPolicyFile("xmlsocket://" + class_51.var_1638 + ":" + class_51.var_1652);
         this.var_1640 = true;
         this.var_1460 = true;
         this.var_1242 = -1;
         this.var_1045 = param1;
         this.var_1422 = new Vector.<class_14>();
         this.var_2269 = new class_93();
         this.method_1037();
      }
      
      private final function method_1037() : void
      {
         this.var_1019 = 0;
         this.var_1247 = new ByteArray();
         this.var_1066 = new ByteArray();
         this.var_128 = new Socket();
         this.var_128.addEventListener(Event.CONNECT,this.method_1263);
         this.var_128.addEventListener(IOErrorEvent.IO_ERROR,this.method_1126);
         this.var_128.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1181);
         this.var_128.addEventListener(Event.CLOSE,this.method_1311);
         this.var_128.addEventListener(ProgressEvent.SOCKET_DATA,this.method_1992);
      }
      
      public final function method_969() : void
      {
         this.dispatchEvent(const_796);
         this.var_128.connect(class_51.var_1638,class_51.var_1652);
      }
      
      public final function method_2643() : void
      {
         if(this.var_128.connected)
         {
            this.var_128.close();
            this.var_1231 = false;
            this.dispatchEvent(const_643);
         }
      }
      
      public final function method_31(param1:class_14) : Boolean
      {
         if(!this.var_128 || !this.var_128.connected)
         {
            return false;
         }
         if(false == this.var_1231 && !(param1 is class_55))
         {
            return false;
         }
         this.var_1066.clear();
         param1.method_14(this.var_1066);
         this.var_128.writeShort(this.var_1066.length);
         this.var_128.writeBytes(this.var_1066,0,this.var_1066.length);
         this.var_128.flush();
         return true;
      }
      
      private final function reconnect() : void
      {
         if(!this.var_728)
         {
            this.var_728 = new Timer(const_1802,1);
            this.var_728.addEventListener(TimerEvent.TIMER_COMPLETE,this.method_1259);
         }
         this.var_728.reset();
         this.var_728.start();
      }
      
      public final function method_1955() : void
      {
         this.var_1460 = true;
         this.var_1242 = 0;
         this.method_36();
         this.method_1037();
         this.method_969();
      }
      
      private final function method_36() : void
      {
         if(this.var_728)
         {
            this.var_728.stop();
            this.var_728.removeEventListener(TimerEvent.TIMER_COMPLETE,this.method_1259);
            this.var_728 = null;
         }
         if(this.var_128.connected)
         {
            this.var_128.close();
         }
         this.var_128.removeEventListener(Event.CONNECT,this.method_1263);
         this.var_128.removeEventListener(IOErrorEvent.IO_ERROR,this.method_1126);
         this.var_128.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.method_1181);
         this.var_128.removeEventListener(Event.CLOSE,this.method_1311);
         this.var_128 = null;
      }
      
      public final function method_2780() : void
      {
         this.var_1640 = false;
      }
      
      public final function method_1743() : void
      {
         this.var_1640 = true;
         this.method_1002();
      }
      
      override public function dispatchEvent(param1:Event) : Boolean
      {
         CentralEventUnit.dispatchEvent(param1);
         return super.dispatchEvent(param1);
      }
      
      private final function method_1992(param1:ProgressEvent) : void
      {
         if(this.var_1640)
         {
            this.method_1002();
         }
      }
      
      private final function method_1002() : void
      {
         var _loc1_:int = 0;
         var _loc2_:class_14 = null;
         var _loc3_:* = false;
         if(!this.var_128 || !this.var_128.connected || this.var_128.bytesAvailable == 0)
         {
            return;
         }
         if(this.var_1019 == 0 && this.var_128.bytesAvailable >= 2)
         {
            this.var_1019 = this.var_128.readShort();
         }
         while(true)
         {
            if(this.var_128.bytesAvailable >= this.var_1019 && this.var_1019 != 0)
            {
               this.var_1247.clear();
               this.var_128.readBytes(this.var_1247,0,this.var_1019);
               _loc1_ = this.var_1247.readShort();
               _loc2_ = this.var_2269.method_25(_loc1_);
               if(null != _loc2_)
               {
                  _loc2_.method_15(this.var_1247);
                  _loc3_ = _loc2_ is class_74;
                  if(_loc3_)
                  {
                     this.var_1045.method_736(_loc2_);
                  }
                  this.method_664(_loc2_);
                  if(_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  class_144.method_341("invalid server message: " + _loc1_ + " => " + getQualifiedClassName(_loc2_),class_143.const_918);
               }
               this.var_1019 = 2 <= this.var_128.bytesAvailable?int(this.var_128.readShort()):0;
               if(_loc2_ is class_35)
               {
                  this.var_1231 = true;
               }
               else
               {
                  continue;
               }
            }
            return;
         }
      }
      
      private final function method_664(param1:class_14) : void
      {
         var _loc2_:Boolean = this.method_188(param1);
         var _loc3_:Boolean = this.var_1045.method_664(param1);
         if(!_loc3_)
         {
            if(this.var_1422)
            {
               this.var_1422.push(param1);
            }
         }
      }
      
      public final function method_1859() : void
      {
         var _loc2_:class_14 = null;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         var _loc1_:int = 0;
         for each(_loc2_ in this.var_1422)
         {
            _loc3_ = this.var_1045.method_2471(_loc2_);
            if(_loc3_)
            {
               _loc1_++;
            }
            _loc4_ = this.method_188(_loc2_);
            _loc5_ = this.var_1045.method_664(_loc2_);
            this.var_1045.method_664(_loc2_);
         }
         this.var_1422 = null;
      }
      
      public function get name_99() : Boolean
      {
         return this.var_1231;
      }
      
      private final function method_1259(param1:TimerEvent) : void
      {
         this.method_969();
      }
      
      private final function method_1311(param1:Event) : void
      {
         this.var_1231 = false;
         this.dispatchEvent(const_643);
      }
      
      private final function method_1181(param1:SecurityErrorEvent) : void
      {
         class_144.method_881(param1,class_143.const_918,"server connection security error");
         this.method_641();
      }
      
      private final function method_1126(param1:IOErrorEvent) : void
      {
         class_144.method_881(param1,class_143.const_918,"ConnectionProxy server connection error");
         this.method_641();
      }
      
      private final function method_641() : void
      {
         if(this.var_1460)
         {
            if(this.var_1242 > -1 && ++this.var_1242 > const_1895)
            {
               this.dispatchEvent(const_711);
               return;
            }
            this.reconnect();
         }
         this.dispatchEvent(const_779);
      }
      
      private final function method_1263(param1:Event) : void
      {
         this.var_128.writeByte(0);
         this.var_1460 = false;
         this.dispatchEvent(const_792);
      }
   }
}
