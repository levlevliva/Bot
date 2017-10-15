package package_38
{
   import com.adobe.serialization.json.JSONToken;
   import com.bigpoint.seafight.model.inventory.vo.ammunition.Ammo_VO;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.class_82;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollDecoSkin;
   import com.bigpoint.seafight.view.popups.common.BorderType3;
   import com.bigpoint.seafight.view.popups.common.ImageDisplay;
   import com.bigpoint.seafight.view.popups.common.MiniActionButton;
   import com.bigpoint.seafight.view.popups.common.table.AlternateListItemBg;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.groupwindow.GroupWindowUserModel;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.OkPopup;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.PopupResponseType;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.controls.Spacer;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.AddItems;
   import mx.states.SetProperty;
   import mx.states.State;
   import net.bigpoint.seafight.com.module.guild.class_879;
   import package_101.class_564;
   import package_101.class_566;
   import package_108.class_581;
   import package_121.class_841;
   import package_130.class_1143;
   import package_14.class_47;
   import package_14.class_87;
   import package_145.class_567;
   import package_145.class_569;
   import package_146.class_568;
   import package_15.class_273;
   import package_15.class_78;
   import package_166.class_1589;
   import package_34.class_116;
   import package_40.class_86;
   import package_41.class_84;
   import package_6.class_14;
   import package_9.class_404;
   import package_9.class_76;
   import package_9.class_917;
   import package_92.class_944;
   import package_93.class_987;
   import spark.components.Group;
   import spark.components.VGroup;
   import spark.components.VScrollBar;
   
   public final class class_79 extends class_78
   {
       
      
      private var var_1467:class_567;
      
      private var var_1992:class_568;
      
      private var var_1619:class_569;
      
      private var var_1176:class_82;
      
      public function class_79(param1:class_273)
      {
         super();
         this.var_1176 = new class_82();
         this.var_1467 = param1.var_2220;
         this.var_1992 = param1.var_2058;
         this.var_1992.addEventListener(Event.CHANGE,this.method_2429);
         this.var_1619 = param1.var_2322;
         this.var_1619.addEventListener(Event.CHANGE,this.method_1986);
         method_35(this.var_1467);
      }
      
      override protected function method_1182() : Object
      {
         var _loc2_:Array = null;
         var _loc3_:Vector.<class_86> = null;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:GroupWindowUserModel = null;
         var _loc8_:class_86 = null;
         var _loc9_:Boolean = false;
         var _loc10_:int = 0;
         var _loc1_:Array = [];
         if(this.var_1467.name_8)
         {
            _loc2_ = [];
            _loc3_ = this.var_1467.name_8.var_766;
            _loc4_ = _loc3_.length;
            _loc6_ = 0;
            while(_loc6_ < _loc4_)
            {
               _loc7_ = new GroupWindowUserModel();
               _loc8_ = _loc3_[_loc6_];
               _loc7_.stub = _loc8_;
               _loc9_ = class_177.method_52(_loc8_.var_162,class_47.method_29.method_56.name_4);
               if(_loc9_)
               {
                  _loc1_.push(_loc7_);
                  _loc5_ = _loc8_.var_1086;
               }
               else
               {
                  _loc2_.push(_loc7_);
               }
               _loc10_ = this.var_1176.method_124(_loc8_.var_162) as int;
               _loc7_.role = _loc10_;
               _loc6_++;
            }
            _loc1_.push.apply(null,_loc2_);
            if(_loc5_)
            {
               _loc6_ = 0;
               while(_loc6_ < _loc4_)
               {
                  _loc7_ = _loc1_[_loc6_];
                  _loc7_.adminAccess = true;
                  _loc6_++;
               }
            }
         }
         return new ArrayList(_loc1_);
      }
      
      public function get name_8() : ArrayList
      {
         return method_38() as ArrayList;
      }
      
      private final function method_2429(param1:Event) : void
      {
         var _loc2_:class_404 = this.var_1992.name_8;
         var _loc3_:int = !!_loc2_?int(_loc2_.var_143.name_5):-1;
         var _loc4_:Boolean = _loc3_ == class_76.const_137 || _loc3_ == class_76.const_313;
         if(!_loc4_)
         {
            this.var_1176.method_54();
         }
      }
      
      private final function method_1986(param1:Event) : void
      {
         var _loc2_:Vector.<class_566> = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:class_566 = null;
         if(this.var_1619.name_8)
         {
            _loc2_ = this.var_1619.name_8.var_49;
            _loc3_ = _loc2_.length;
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               _loc5_ = _loc2_[_loc4_];
               if(_loc5_.name_17 == class_566.const_540)
               {
                  this.var_1176.method_511(_loc5_.var_17,_loc5_.var_260);
               }
               else
               {
                  this.var_1176.method_511(_loc5_.var_17,null);
               }
               _loc4_++;
            }
         }
         else
         {
            this.var_1176.method_54();
         }
      }
   }
}
