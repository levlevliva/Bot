package package_43
{
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.mainmenu.MainMenuButtonVo;
   import com.bigpoint.seafight.view.popups.common.GreenAcceptButton;
   import com.bigpoint.seafight.view.popups.common.table.TableHeader;
   import com.bigpoint.seafight.view.popups.event.vo.MinigameMateysListItemRendererVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.GuildMemberListItemVo;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.popups.ISimplePopupHandler;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Dictionary;
   import flash.utils.IDataOutput;
   import flash.utils.Timer;
   import mx.binding.Binding;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import net.bigpoint.seafight.com.module.guild.class_1477;
   import net.bigpoint.seafight.com.module.guild.class_68;
   import net.bigpoint.seafight.com.module.ship.class_661;
   import package_111.class_859;
   import package_14.class_1003;
   import package_14.class_102;
   import package_14.class_47;
   import package_14.class_49;
   import package_15.class_273;
   import package_15.class_78;
   import package_16.class_28;
   import package_161.class_819;
   import package_161.class_895;
   import package_169.class_1190;
   import package_170.class_979;
   import package_184.class_1129;
   import package_190.class_1181;
   import package_36.class_100;
   import package_41.class_84;
   import package_46.class_1224;
   import package_47.class_881;
   import package_5.class_123;
   import package_5.class_43;
   import package_6.class_14;
   import spark.components.Group;
   import spark.filters.DropShadowFilter;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_263 extends class_78
   {
       
      
      private var var_2329:class_1190;
      
      public function class_263(param1:class_273)
      {
         super();
         method_35(this.var_2329 = param1.var_2329);
      }
      
      override protected function method_1182() : Object
      {
         var _loc4_:class_819 = null;
         var _loc5_:class_1189 = null;
         var _loc6_:class_661 = null;
         var _loc1_:class_895 = this.var_2329.name_8;
         if(_loc1_ == null)
         {
            return null;
         }
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:Vector.<class_819> = _loc1_.name_9;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = new class_1189();
            _loc5_.var_2340 = _loc4_.var_323;
            _loc5_.var_35 = _loc4_.var_35;
            for each(_loc6_ in _loc4_.var_323.name_18)
            {
               _loc5_.var_599.push(new class_1181(_loc6_));
            }
            if(!_loc2_[_loc4_.var_22])
            {
               _loc2_[_loc4_.var_22] = new Vector.<class_1189>();
            }
            _loc2_[_loc4_.var_22].push(_loc5_);
         }
         return _loc2_;
      }
      
      public final function method_2727(param1:int) : Vector.<class_1189>
      {
         var _loc2_:Dictionary = method_38() as Dictionary;
         var _loc3_:Vector.<class_1189> = !!_loc2_?_loc2_[param1] as Vector.<class_1189>:null;
         return _loc3_;
      }
   }
}
