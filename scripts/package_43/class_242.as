package package_43
{
   import com.bigpoint.seafight.model.inventory.vo.sail.Sail_VO;
   import com.bigpoint.seafight.model.vo.class_1524;
   import com.bigpoint.seafight.model.vo.class_173;
   import com.bigpoint.seafight.model.vo.class_206;
   import com.bigpoint.seafight.model.vo.class_980;
   import com.bigpoint.seafight.tools.class_154;
   import com.bigpoint.seafight.tools.getMapPoint;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.common.SimpleGreenButtonSkin;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.quest.npc.component.ContentLowerLeft;
   import com.bigpoint.seafight.view.popups.spymenu.vo.SpyUserDataVo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import mx.events.FlexEvent;
   import mx.logging.Log;
   import net.bigpoint.seafight.com.module.gems.class_775;
   import net.bigpoint.seafight.com.module.gems.class_892;
   import net.bigpoint.seafight.com.module.minigame.class_1331;
   import net.bigpoint.seafight.com.module.minigame.class_438;
   import net.bigpoint.seafight.com.module.ship.class_1310;
   import package_104.class_448;
   import package_104.class_803;
   import package_104.class_989;
   import package_14.class_47;
   import package_147.class_572;
   import package_147.class_731;
   import package_15.class_273;
   import package_15.class_78;
   import package_16.class_28;
   import package_170.class_979;
   import package_171.class_1268;
   import package_187.class_1145;
   import package_187.class_1146;
   import package_210.class_1474;
   import package_36.class_100;
   import package_41.class_84;
   import package_41.class_93;
   import package_5.class_214;
   import package_54.class_160;
   import package_6.class_14;
   import package_7.class_1039;
   import package_72.class_1080;
   import spark.components.Label;
   
   public final class class_242 extends class_78
   {
       
      
      private var var_1087:class_1146;
      
      private var var_827:class_1145;
      
      public function class_242(param1:class_273, param2:String, param3:Boolean)
      {
         super();
         if(param3)
         {
            this.var_827 = param1.method_2647(param2);
            method_35(this.var_827);
         }
         else
         {
            this.var_1087 = param1.method_1762(param2);
            method_35(this.var_1087);
         }
      }
      
      override protected function method_1182() : Object
      {
         if(this.var_827)
         {
            if(this.var_827.name_8)
            {
               return new ArrayCollection(this.method_1717(this.var_827.name_8.var_313));
            }
         }
         else if(this.var_1087.name_8)
         {
            return new ArrayCollection(this.method_2824(this.var_1087.name_8.var_263));
         }
         return null;
      }
      
      private final function method_1717(param1:Vector.<class_572>) : Array
      {
         var _loc5_:class_572 = null;
         var _loc6_:SpyUserDataVo = null;
         var _loc2_:Array = [];
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = SpyUserDataVo.SpyUserDataVoUser(_loc5_.name_13,_loc5_.name_7,_loc5_.var_92);
            _loc2_.push(_loc6_);
            _loc4_++;
         }
         return _loc2_;
      }
      
      private final function method_2824(param1:Vector.<class_731>) : Array
      {
         var _loc5_:class_731 = null;
         var _loc6_:SpyUserDataVo = null;
         var _loc2_:Array = [];
         var _loc3_:int = param1.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1[_loc4_];
            _loc6_ = SpyUserDataVo.SpyUserDataVoGuild(_loc5_.name_13,_loc5_.name_7,_loc5_.var_92);
            _loc2_.push(_loc6_);
            _loc4_++;
         }
         return _loc2_;
      }
      
      public function get name_8() : ArrayCollection
      {
         return method_38() as ArrayCollection;
      }
      
      override public function method_36() : void
      {
         if(this.var_827)
         {
            method_43(this.var_827);
            this.var_827.method_36();
         }
         else
         {
            method_43(this.var_1087);
            this.var_1087.method_36();
         }
      }
   }
}
