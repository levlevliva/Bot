package package_69
{
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.tools.class_122;
   import com.bigpoint.seafight.tools.class_125;
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.view.popups.guildmenu.island.component.tabs.TowerListItem;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.skins.ScrollBarSkin;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenDeathWindow;
   import com.greensock.TimelineMax;
   import com.greensock.TweenAlign;
   import com.greensock.TweenMax;
   import com.greensock.easing.Quad;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.IDataInput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.core.ClassFactory;
   import mx.graphics.SolidColorStroke;
   import mx.logging.Log;
   import mx.states.State;
   import package_113.class_487;
   import package_14.class_1313;
   import package_14.class_47;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_96;
   import package_143.class_1040;
   import package_143.class_1056;
   import package_143.class_542;
   import package_143.class_933;
   import package_158.class_703;
   import package_171.class_1043;
   import package_171.class_1055;
   import package_171.class_1057;
   import package_171.class_1058;
   import package_171.class_1059;
   import package_186.class_1137;
   import package_186.class_1465;
   import package_20.class_109;
   import package_5.class_22;
   import package_6.class_14;
   import spark.components.Label;
   import spark.components.Scroller;
   
   public final class class_194 extends class_109
   {
       
      
      private var var_2131:class_1058;
      
      private var var_1898:class_1043;
      
      private var var_2274:class_1057;
      
      private var var_2320:class_1059;
      
      private var var_2157:class_1055;
      
      private var var_1609:class_542;
      
      private var var_1465:class_542;
      
      private var var_1714:class_542;
      
      private var var_1721:class_542;
      
      private var var_2249:class_542;
      
      public function class_194()
      {
         this.var_1609 = new class_542();
         this.var_1465 = new class_542();
         this.var_1714 = new class_542();
         this.var_1721 = new class_542();
         this.var_2249 = new class_542();
         super();
         this.var_2131 = class_1058.method_21();
         this.var_1898 = class_1043.method_21();
         this.var_2274 = class_1057.method_21();
         this.var_2157 = class_1055.method_21();
         this.var_2320 = class_1059.method_21();
      }
      
      public final function method_55(param1:class_542) : void
      {
         var _loc2_:Vector.<class_933> = null;
         var _loc3_:class_933 = null;
         this.var_1465.name_9 = new Vector.<class_933>();
         this.var_1609.name_9 = new Vector.<class_933>();
         this.var_1714.name_9 = new Vector.<class_933>();
         this.var_1721.name_9 = new Vector.<class_933>();
         this.var_2249.name_9 = new Vector.<class_933>();
         if(param1.name_5 == class_1040.const_235)
         {
            _loc2_ = param1.name_9;
            for each(_loc3_ in _loc2_)
            {
               switch(_loc3_.name_5)
               {
                  case class_1056.const_349:
                  case class_1056.const_63:
                     this.var_1465.name_9.push(_loc3_);
                     continue;
                  case class_1056.const_96:
                     this.var_1609.name_9.push(_loc3_);
                     continue;
                  case class_1056.const_55:
                     this.var_1714.name_9.push(_loc3_);
                     continue;
                  case class_1056.const_71:
                     this.var_1721.name_9.push(_loc3_);
                     continue;
                  default:
                     continue;
               }
            }
            this.var_2131.method_55(this.var_1609);
            this.var_1898.method_55(this.var_1465);
            this.var_2274.method_55(this.var_1714);
            this.var_2157.method_55(this.var_1721);
         }
         else if(param1.name_5 == class_1040.const_432)
         {
            this.var_2320.method_55(param1);
         }
         method_34(-1);
      }
   }
}
