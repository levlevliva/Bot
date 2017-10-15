package package_165
{
   import com.bigpoint.seafight.model.vo.class_172;
   import com.bigpoint.seafight.model.vo.class_174;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.ISocket;
   import com.bigpoint.seafight.view.popups.gempopup.ship.vo.GemItemVo;
   import com.bigpoint.seafight.view.popups.groupmap.invitation.vo.GroupMapPlayerListItemRendererVo;
   import com.bigpoint.seafight.view.popups.leaguemenu.component.tabs.LeagueMenuRewardSubListItem;
   import com.bigpoint.seafight.view.popups.shipequipment.vo.ShipEquipmentPresetsVo;
   import com.bigpoint.seafight.view.popups.teamscore.CivilWarTeamScorePopupController;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.controls.Spacer;
   import mx.core.ClassFactory;
   import mx.events.FlexEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.seafight.com.module.ship.CharacterId;
   import package_100.class_1186;
   import package_100.class_598;
   import package_101.class_1549;
   import package_104.class_989;
   import package_136.class_926;
   import package_14.class_47;
   import package_14.class_49;
   import package_16.class_28;
   import package_166.class_1351;
   import package_170.class_979;
   import package_171.class_1059;
   import package_171.class_1268;
   import package_185.class_1136;
   import package_20.class_33;
   import package_212.class_1537;
   import package_34.class_1272;
   import package_41.class_84;
   import package_42.class_959;
   import package_46.class_1457;
   import package_5.class_123;
   import package_5.class_43;
   import package_7.class_1039;
   import package_92.class_944;
   import spark.components.HGroup;
   import spark.components.VGroup;
   
   public final class class_957 extends class_956
   {
      
      private static const const_1182:int = 42;
      
      private static const const_1276:int = 55;
       
      
      private var name_46:Sprite;
      
      private var name_59:class_1351;
      
      private var var_872:Bitmap;
      
      private var var_932:Bitmap;
      
      private var var_1027:Bitmap;
      
      private var var_993:Bitmap;
      
      private var var_984:Bitmap;
      
      private var var_1063:Bitmap;
      
      public function class_957(param1:class_174)
      {
         this.name_46 = new Sprite();
         super(param1);
         this.name_46.y = const_1182;
         addChild(this.name_46);
      }
      
      override public function method_34(param1:class_172) : void
      {
         super.method_34(param1);
         var _loc2_:SWFFinisher = getSWFFinisher(class_123.const_20);
         var _loc3_:class_174 = param1 as class_174;
         var _loc4_:Boolean = class_49.method_42(class_43.const_550);
         var _loc5_:Boolean = _loc3_.var_1343 && _loc4_;
         var _loc6_:Boolean = _loc3_.var_1389 && _loc4_;
         var _loc7_:Boolean = _loc3_.var_1421 && _loc4_;
         var _loc8_:Boolean = _loc3_.var_1208 && _loc4_;
         var _loc9_:Boolean = _loc3_.var_1413 && _loc4_;
         var _loc10_:Boolean = _loc3_.var_1440 && _loc4_;
         var _loc11_:Boolean = !_loc8_ && !_loc9_;
         if(_loc4_)
         {
            if(!this.name_59)
            {
               addChild(this.name_59 = new class_1351());
            }
            this.name_59.name_59 = _loc3_.name_59.method_216(class_1136.const_14);
            this.name_59.y = _loc5_ || _loc6_ || _loc7_ || _loc8_ || _loc9_?Number(const_1276):Number(const_1182);
            this.name_59.method_1966(!_loc5_);
         }
         else if(this.method_382(this.name_59))
         {
            this.name_59 = null;
         }
         this.name_46.graphics.clear();
         if(_loc5_)
         {
            if(!this.var_872)
            {
               addChild(this.var_872 = _loc2_.getEmbeddedBitmap("mojodeck"));
            }
            this.var_872.x = this.var_872.width * -0.5;
            this.var_872.y = this.name_46.y + 8;
            this.name_46.graphics.beginFill(16776960,0);
            this.name_46.graphics.drawRect(0,0,this.var_872.width,1);
            this.name_46.graphics.endFill();
         }
         else if(this.method_382(this.var_872))
         {
            this.var_872 = null;
         }
         var _loc12_:int = !!_loc5_?30:0;
         if(_loc7_)
         {
            if(!this.var_1027)
            {
               this.name_46.addChild(this.var_1027 = _loc2_.getEmbeddedBitmap("kingdeck"));
            }
            this.var_1027.y = 3;
            this.var_1027.x = !!_loc5_?Number(4):Number(_loc12_);
            if(!_loc5_)
            {
               _loc12_ = _loc12_ + (this.var_1027.width + (!!_loc11_?0:-1));
            }
         }
         else if(this.method_382(this.var_1027))
         {
            this.var_1027 = null;
         }
         if(_loc8_)
         {
            if(!this.var_993)
            {
               this.name_46.addChild(this.var_993 = _loc2_.getEmbeddedBitmap("paydeck"));
            }
            this.var_993.y = 3;
            this.var_993.x = _loc5_ && !_loc9_?Number(_loc12_ + 4):Number(_loc12_);
            _loc12_ = _loc12_ + (this.var_993.width - 2);
         }
         else if(this.method_382(this.var_993))
         {
            this.var_993 = null;
         }
         if(_loc9_)
         {
            if(!this.var_984)
            {
               this.name_46.addChild(this.var_984 = _loc2_.getEmbeddedBitmap("paydeck"));
            }
            this.var_984.y = 3;
            this.var_984.x = _loc5_ && !_loc8_?Number(_loc12_ + 4):Number(_loc12_);
            _loc12_ = _loc12_ + (this.var_984.width - 2);
         }
         else if(this.method_382(this.var_984))
         {
            this.var_984 = null;
         }
         if(_loc10_)
         {
            if(!this.var_1063)
            {
               this.name_46.addChild(this.var_1063 = _loc2_.getEmbeddedBitmap("jollyrogerdeck"));
            }
            this.var_1063.y = 28;
            this.var_1063.x = 34;
         }
         else if(this.method_382(this.var_1063))
         {
            this.var_1063 = null;
         }
         if(_loc6_)
         {
            if(!this.var_932)
            {
               this.name_46.addChild(this.var_932 = _loc2_.getEmbeddedBitmap("queendeck"));
            }
            if(_loc5_)
            {
               this.var_932.x = 57;
            }
            else if(_loc11_ && !_loc7_)
            {
               this.var_932.x = 0;
            }
            else
            {
               this.var_932.x = _loc12_ + (!!_loc11_?-2:_loc8_ || _loc9_?1:2);
            }
            if(_loc11_ && !_loc7_)
            {
               this.name_46.graphics.beginFill(16711680,0);
               this.name_46.graphics.drawRect(_loc12_,0,4,1);
               this.name_46.graphics.endFill();
            }
         }
         else if(this.method_382(this.var_932))
         {
            this.var_932 = null;
         }
         this.name_46.x = this.name_46.width * -0.5;
      }
      
      private final function method_382(param1:DisplayObject) : Boolean
      {
         if(param1 && param1.parent)
         {
            param1.parent.removeChild(param1);
            return true;
         }
         return false;
      }
   }
}
