package package_72
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.control.ceu.CentralEventUnit;
   import com.bigpoint.seafight.model.vo.class_332;
   import com.bigpoint.seafight.view.common.components.PlayerGuildWindow;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.deathpopup.component.DeathPopupButton;
   import com.bigpoint.seafight.view.popups.gempopup.ship.component.GemItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.component.PlayerGuildWindowNaviPopup;
   import com.bigpoint.seafight.view.popups.guildmenu.player.controllers.PlayerGuildWindowNaviController;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.PlayerGuildWindowNaviPopupVo;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentUpperLeft;
   import com.bigpoint.seafight.view.userInterface.UserInterface;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.ComboBox;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.BasicResizableWindowSkin;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ComboBoxSkinBold;
   import com.bit101.components.ColorChooser;
   import flash.display.BlendMode;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import net.bigpoint.seafight.com.module.gems.class_599;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import net.bigpoint.seafight.com.module.ship.class_700;
   import package_11.class_130;
   import package_14.class_47;
   import package_14.class_94;
   import package_166.class_961;
   import package_180.class_1074;
   import package_180.class_1076;
   import package_180.class_1077;
   import package_180.class_1078;
   import package_20.class_33;
   import package_39.class_973;
   import package_41.class_93;
   import package_45.class_110;
   import package_47.class_128;
   import package_47.class_135;
   import package_47.class_930;
   import package_5.class_123;
   import package_51.class_974;
   import package_53.class_1101;
   import package_8.class_1079;
   import spark.components.Group;
   import spark.components.HGroup;
   import spark.components.List;
   import spark.components.TitleWindow;
   import spark.components.VGroup;
   import spark.layouts.VerticalLayout;
   import spark.primitives.Rect;
   
   public final class class_203
   {
      
      private static var name_3:class_203;
       
      
      private var name_64:class_1079;
      
      private var var_996:Dictionary;
      
      private var var_1672:Dictionary;
      
      public function class_203()
      {
         super();
         this.name_64 = new class_1079();
         this.var_996 = new Dictionary();
         this.var_1672 = new Dictionary();
      }
      
      public static function name_21(param1:int) : class_1071
      {
         return name_12.name_21(param1);
      }
      
      public static function method_64(param1:int) : void
      {
         name_12.method_64(param1);
      }
      
      public static function get name_12() : class_203
      {
         return !!name_3?name_3:name_3 = new class_203();
      }
      
      private final function name_21(param1:int) : class_1071
      {
         if(!this.name_64.method_120())
         {
            return null;
         }
         var _loc2_:class_1071 = this.var_1672[param1] as class_1071;
         if(null == _loc2_)
         {
            _loc2_ = this.method_556(param1);
            if(_loc2_ && _loc2_.method_1809)
            {
               this.var_1672[param1] = _loc2_;
            }
         }
         if(null == _loc2_)
         {
            return null;
         }
         _loc2_.name_21();
         return _loc2_;
      }
      
      private final function method_64(param1:int) : void
      {
         var _loc2_:class_1071 = this.var_1672[param1] as class_1071;
         if(_loc2_)
         {
            _loc2_.method_64();
         }
      }
      
      private final function method_457(param1:String) : class_1080
      {
         var _loc2_:class_1080 = this.var_996[param1] as class_1080;
         if(_loc2_)
         {
            return _loc2_;
         }
         _loc2_ = new class_1080(param1);
         _loc2_.method_68();
         this.var_996[param1] = _loc2_;
         return _loc2_;
      }
      
      private final function method_556(param1:int) : class_1071
      {
         var _loc2_:class_1075 = this.name_64.method_1899(param1);
         if(_loc2_ == null)
         {
            return null;
         }
         switch(_loc2_.name_5)
         {
            case class_1079.const_1501:
               return new class_1074(this.method_457(_loc2_.var_695),_loc2_.name_13);
            case class_1079.const_1346:
               return new class_1076(this.method_457(_loc2_.var_695),_loc2_.name_13);
            case class_1079.const_1435:
               return new class_1077(this.method_457(_loc2_.var_695),_loc2_.name_13,_loc2_.name_48);
            case class_1079.const_1373:
               return new class_1078(this.method_457(_loc2_.var_695),_loc2_.name_13,_loc2_.name_48);
            default:
               var _loc3_:* = this + ": unknown sound type \"" + _loc2_.name_5 + "\"";
               Main.LOG.error(_loc3_);
               return null;
         }
      }
      
      public final function method_517(param1:Number) : void
      {
         class_1074.name_47.method_1359(param1);
      }
      
      public final function method_516(param1:Number) : void
      {
         class_1076.name_47.method_1359(param1);
      }
      
      public final function method_68(param1:Function) : void
      {
         this.name_64.method_68(param1);
      }
   }
}
