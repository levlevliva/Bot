package package_48
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1092;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.class_1095;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.gameactivitymenu.GameActivityMenuItem;
   import com.greensock.TweenLite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import mx.binding.BindingManager;
   import net.bigpoint.seafight.com.module.guild.class_373;
   import package_104.class_448;
   import package_118.class_1445;
   import package_118.class_539;
   import package_14.class_51;
   import package_6.class_14;
   import spark.components.Label;
   
   public class class_126
   {
       
      
      private var var_1502:Class;
      
      private var var_1878:Array;
      
      public function class_126(param1:Class)
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         super();
         this.var_1502 = param1;
         this.var_1878 = [];
         var _loc2_:XMLList = describeType(param1)["constant"];
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = _loc3_.@name;
            _loc5_ = this.var_1502[_loc4_];
            this.var_1878[_loc5_] = _loc4_;
         }
      }
      
      public function method_124(param1:String) : int
      {
         if(!this.var_1502.hasOwnProperty(param1))
         {
            Main.LOG.fatal("invalid field name \"{0}\" found in reflection class {1}",param1,this);
         }
         return this.var_1502[param1];
      }
      
      public function method_27(param1:int) : String
      {
         var _loc2_:String = this.var_1878[param1];
         if(null == _loc2_)
         {
            Main.LOG.error("no matching const field name found for value \"{0}\" in reflection class {1}",param1,this);
         }
         return _loc2_;
      }
   }
}
