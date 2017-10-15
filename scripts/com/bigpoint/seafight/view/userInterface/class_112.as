package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.class_24;
   import com.bigpoint.seafight.model.vo.class_1170;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetStatsComponentVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetTrainerStatsListItemVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.PetsInventoryVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.dragdrop.IAmountItemVo;
   import com.bigpoint.seafight.view.popups.event.modules.faction.getFactionTeamName;
   import com.bigpoint.seafight.view.popups.event.modules.minigame.MinigameHelperItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.bootybag.component.BootyBagItemRenderer;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSlotId;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemSocket;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardsTabListItem;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.popups.quest.npc.component.QuestWindowHeaderBG;
   import com.bigpoint.seafight.view.popups.shipselection.vo.SelectionVListItemGemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.customshipmenu.vo.GemStatListItemVo;
   import com.greensock.TweenLite;
   import com.greensock.loading.LoaderStatus;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.ProgressEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.sound.SoundEffectType;
   import package_104.class_641;
   import package_121.class_841;
   import package_123.class_1032;
   import package_123.class_837;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_88;
   import package_14.class_96;
   import package_152.class_668;
   import package_170.class_979;
   import package_171.class_1316;
   import package_190.class_1181;
   import package_190.class_1469;
   import package_34.class_107;
   import package_39.class_973;
   import package_41.class_103;
   import package_41.class_93;
   import package_49.class_880;
   import package_5.class_12;
   import package_5.class_22;
   import package_5.class_43;
   import package_72.class_203;
   import package_9.class_17;
   import package_9.class_76;
   import package_9.class_91;
   import package_92.class_1278;
   import spark.components.DataGroup;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.VGroup;
   import spark.events.IndexChangeEvent;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.BitmapImage;
   
   public final class class_112 extends class_111
   {
       
      
      private var var_354:Loader;
      
      private var var_173:MovieClip;
      
      private var var_1928:Boolean;
      
      private var var_2016:int;
      
      private var var_2037:int;
      
      private var var_1383:int;
      
      private var var_1243:int;
      
      private var var_550:Rectangle;
      
      private var var_2019:Boolean;
      
      private var var_1394:int = -1;
      
      private var var_2003:Boolean;
      
      public function class_112()
      {
         super();
         this.var_1928 = true;
         this.var_2003 = false;
         this.var_550 = new Rectangle();
         var_37 = class_43.const_569;
         var_46 = class_43.const_675;
         this.var_2019 = class_49.method_42(class_43.const_370);
      }
      
      public final function name_16() : void
      {
         if(!this.var_1928 || this.var_354 != null || !class_51.var_1337)
         {
            return;
         }
         this.var_354 = new Loader();
         this.var_354.contentLoaderInfo.addEventListener(Event.COMPLETE,this.method_1698);
         this.var_354.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.method_1708);
         class_47.var_1427.method_1815(this.method_68);
      }
      
      public final function method_1548(param1:Boolean) : void
      {
         this.visible = this.var_2019 = param1;
      }
      
      private final function method_68() : void
      {
         var _loc1_:* = null;
         _loc1_ = class_51.var_984 + "chat.swf";
         const_3.info("Load chat " + _loc1_);
         this.var_354.load(class_24.method_434(_loc1_));
      }
      
      private final function method_1708(param1:IOErrorEvent) : void
      {
         const_3.error("Error loading global chat");
      }
      
      private final function method_1698(param1:Event = null) : void
      {
         var _loc2_:class_174 = null;
         _loc2_ = class_47.method_29.method_56;
         var _loc3_:String = this.method_2418();
         var _loc4_:Point = this.method_2817();
         var _loc5_:String = _loc2_.name_4.var_6 + "/" + _loc2_.var_44;
         var _loc6_:String = _loc2_.var_154 && _loc2_.var_154.length > 0?_loc2_.name_20.var_6 + "/" + _loc2_.var_154:"-1";
         addChild(this.var_173 = (param1.target as LoaderInfo).content as MovieClip);
         const_3.info("Connecting chatserver: username: " + _loc5_ + " userid: " + class_51.var_1561 + "  guildtag: " + _loc6_ + " lang: " + _loc3_ + " projectID: " + class_51.var_420 + " baseURL: " + class_51.var_984);
         this.var_550.x = -500;
         this.var_550.y = -500;
         this.var_550.width = 2000;
         this.var_550.height = 2000;
         this.var_1383 = _loc4_.x;
         this.var_1243 = _loc4_.y;
         this.var_2016 = 0;
         this.var_2037 = 0;
         this.var_173.initChatSecure(_loc5_,class_51.var_1561,class_51.var_1000,class_51.var_420,_loc3_,_loc6_,"",new Point(this.var_2016,this.var_2037),null,false,class_51.var_984,this.method_1745(),false,this.var_1383,this.var_1243,class_51.var_1590);
         this.var_173.addEventListener("ChatEvent.ALL_LOADED",this.method_1861);
         class_47.var_1427.method_2800();
         if(this.var_1394 != -1)
         {
            this.method_1099(this.var_1394);
         }
      }
      
      private final function method_1861(param1:Event) : void
      {
         const_3.info("Chat ready");
         this.var_173.addEventListener("ChatEvent.NEW_POSITION",this.method_2789);
         this.var_173.addEventListener("ChatEvent.NEW_SIZE",this.method_1623);
         this.var_2003 = true;
         this.visible = !class_47.method_51.method_141(class_76.const_136) && this.var_2019;
         this.method_110();
         if(class_12.var_104 == class_12.const_15)
         {
            this.method_798();
         }
      }
      
      private final function method_2789(param1:Event = null) : void
      {
         this.method_1133(true,false);
         method_194(class_49.method_46(var_37),class_49.method_46(var_46));
      }
      
      private final function method_1623(param1:Event = null) : void
      {
         var size:Point = null;
         var e:Event = param1;
         if(!this.var_173)
         {
            return;
         }
         try
         {
            size = this.var_173.getSize();
         }
         catch(e:Error)
         {
            const_3.error("Could not get chat size: " + var_173 + ": " + e);
            return;
         }
         this.var_1383 = size.x;
         this.var_1243 = size.y;
         if(class_12.var_104 == class_12.const_15)
         {
            this.method_798();
         }
         if(e)
         {
            this.method_1133(false,true);
         }
      }
      
      private final function method_798() : void
      {
         this.var_550.x = 0;
         this.var_550.y = 0;
         this.var_550.width = class_51.var_39 - this.var_1383;
         this.var_550.height = class_51.var_40 - this.var_1243;
         try
         {
            this.var_173.setViewportBounds(this.var_550);
            return;
         }
         catch(e:Error)
         {
            const_3.error("Could not set bounds: " + var_550 + ": " + var_173 + ": " + e);
            return;
         }
      }
      
      private final function method_1745() : int
      {
         switch(class_51.var_129)
         {
            case "ko":
            case "ja":
            case "zh":
               return 1;
            default:
               return 0;
         }
      }
      
      private final function method_2418() : String
      {
         var _loc1_:String = class_51.var_129;
         if(_loc1_ == "us" || _loc1_ == "tc")
         {
            _loc1_ = "en";
         }
         else if(_loc1_ == "sk")
         {
            _loc1_ = "cs";
         }
         else if(_loc1_ == "br")
         {
            _loc1_ = "pt";
         }
         return _loc1_;
      }
      
      private final function method_144(param1:int, param2:int) : void
      {
         var xpos:int = param1;
         var ypos:int = param2;
         if(this.var_173 == null)
         {
            return;
         }
         try
         {
            this.var_173.updatePosition(xpos,ypos - UserInterface.MAXIMIZED_SCREEN_HEIGHT_EXCESS);
            this.var_2016 = xpos;
            this.var_2037 = ypos;
            return;
         }
         catch(e:Error)
         {
            const_3.error("Could not set position: " + xpos + "x" + ypos + ": " + var_173 + ": " + e);
            return;
         }
      }
      
      private final function method_1280(param1:int, param2:int) : void
      {
         var width:int = param1;
         var height:int = param2;
      }
      
      private final function method_1133(param1:Boolean, param2:Boolean) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Group = null;
         var _loc6_:Point = null;
         var _loc3_:Vector.<int> = new Vector.<int>();
         if(param1)
         {
            _loc4_ = this.var_173.getPosition();
            if(class_12.var_104 != class_12.const_15)
            {
               _loc5_ = class_47.method_272.container;
               _loc4_.x = _loc4_.x - _loc5_.x;
               _loc4_.y = _loc4_.y - _loc5_.y;
            }
            _loc3_.push(var_37);
            _loc3_.push(_loc4_.x);
            _loc3_.push(var_46);
            _loc3_.push(_loc4_.y);
         }
         if(param2)
         {
            _loc6_ = this.var_173.getSize();
            _loc3_.push(class_43.const_107);
            _loc3_.push(_loc6_.x);
            _loc3_.push(class_43.const_192);
            _loc3_.push(_loc6_.y);
         }
         class_107.name_3.method_569(_loc3_);
      }
      
      public final function method_451() : void
      {
         if(this.var_173 == null)
         {
            return;
         }
         this.method_798();
      }
      
      public final function method_1099(param1:int) : void
      {
         var groupID:int = param1;
         this.var_1394 = groupID;
         try
         {
            this.var_173.createGroupRoom(groupID,class_47.method_22.method_28("group_view_chat_label"));
            return;
         }
         catch(e:Error)
         {
            const_3.error("Could not join group: " + groupID + ": " + var_173 + ": " + e);
            return;
         }
      }
      
      public final function method_2518() : void
      {
         if(this.var_1394 == -1)
         {
            return;
         }
         this.var_1394 = -1;
         try
         {
            this.var_173.leaveGroupRoom();
            return;
         }
         catch(e:Error)
         {
            const_3.error("Could not leave group: " + var_173 + ": " + e);
            return;
         }
      }
      
      public final function method_1532(param1:String) : void
      {
         var msg:String = param1;
         try
         {
            this.var_173.showMessage(msg);
            return;
         }
         catch(e:Error)
         {
            if(!_loc5_)
            {
               §§push(const_3);
               §§push("Could not show message: " + msg);
               §§push(": ");
               if(!_loc5_)
               {
                  §§push(§§pop() + §§pop() + var_173);
                  if(!_loc5_)
                  {
                     §§push(": ");
                  }
                  addr60:
                  §§pop().error(§§pop() + e);
               }
               §§push(§§pop() + §§pop());
               if(!_loc5_)
               {
                  §§goto(addr60);
               }
               §§goto(addr60);
            }
            return;
         }
      }
      
      public function set method_2955(param1:Boolean) : void
      {
         this.var_1928 = param1;
      }
      
      public final function method_77() : void
      {
         var _loc1_:class_49 = null;
         var _loc4_:Vector.<int> = null;
         if(var_127.var_335)
         {
            return;
         }
         _loc1_ = class_47.method_112;
         var _loc2_:Boolean = _loc1_.method_97(var_37);
         var _loc3_:Boolean = _loc1_.method_97(class_43.const_107);
         this.method_88();
         if(!_loc2_ && !_loc3_)
         {
            return;
         }
         if(_loc2_)
         {
            _loc4_ = new Vector.<int>();
            _loc4_.push(var_37);
            _loc4_.push(var_46);
         }
         if(_loc3_)
         {
            if(_loc4_ == null)
            {
               _loc4_ = new Vector.<int>();
            }
            _loc4_.push(class_43.const_107);
            _loc4_.push(class_43.const_192);
         }
         if(_loc4_)
         {
            class_107.name_3.method_469(_loc4_);
         }
      }
      
      override public function method_110() : void
      {
         var _loc1_:class_49 = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(this.var_173 == null)
         {
            return;
         }
         _loc1_ = class_47.method_112;
         var _loc2_:Boolean = _loc1_.method_97(class_43.const_569);
         var _loc3_:Boolean = _loc1_.method_97(class_43.const_107);
         if(_loc3_)
         {
            this.method_1280(_loc1_.method_46(class_43.const_107),_loc1_.method_46(class_43.const_192));
         }
         else
         {
            this.method_1407();
         }
         if(_loc2_)
         {
            _loc4_ = _loc1_.method_46(var_37);
            _loc5_ = _loc1_.method_46(var_46);
            method_194(_loc4_,_loc5_);
            this.method_144(_loc4_,_loc5_);
         }
         else
         {
            this.method_1482();
         }
         if(!_loc2_ && !_loc3_)
         {
            this.method_88();
         }
      }
      
      public final function method_2817() : Point
      {
         var _loc1_:class_49 = null;
         _loc1_ = class_47.method_112;
         var _loc2_:Boolean = _loc1_.method_97(class_43.const_107);
         var _loc3_:Point = new Point();
         if(_loc2_)
         {
            _loc3_.x = _loc1_.method_46(class_43.const_107);
            _loc3_.y = _loc1_.method_46(class_43.const_192);
         }
         else
         {
            _loc3_.x = _loc1_.method_103(class_43.const_107);
            _loc3_.y = _loc1_.method_103(class_43.const_192);
         }
         return _loc3_;
      }
      
      override public function method_88() : void
      {
         if(this.var_173 == null)
         {
            return;
         }
         super.method_88();
         this.method_1407();
         this.method_1482();
      }
      
      public final function method_160() : Boolean
      {
         return this.var_2003;
      }
      
      private final function method_1407() : void
      {
         var _loc1_:class_49 = class_47.method_112;
         this.method_1280(_loc1_.method_103(class_43.const_107),_loc1_.method_103(class_43.const_192));
      }
      
      private final function method_1482() : void
      {
         var _loc1_:class_49 = class_47.method_112;
         if(_loc1_.method_263(var_37))
         {
            this.method_144(_loc1_.method_103(var_37),_loc1_.method_103(var_46));
         }
         else
         {
            this.method_2248();
         }
      }
      
      private final function method_2248() : void
      {
         this.method_144(class_51.var_39 - this.var_1383 - 40,class_51.var_40 - this.var_1243 - 30);
      }
   }
}
