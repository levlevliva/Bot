package package_74
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.model.vo.class_1225;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.avatarupload.vo.AvatarUploadPopupVo;
   import com.bigpoint.seafight.view.popups.boarding.vo.ShipEquipmentVo;
   import com.bigpoint.seafight.view.popups.event.modules.marauder.CheckPointSprite;
   import com.bigpoint.seafight.view.popups.gempopup.crafting.vo.CraftingMaterialItemVo;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScorePopupVo;
   import com.bigpoint.services.statelessCommands.StatelessCMD;
   import com.bigpoint.services.statelessCommands.commands.CmdSL_OpenAvatarUploadWindow;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import net.bigpoint.seafight.com.module.gems.class_759;
   import net.bigpoint.seafight.com.module.gems.class_864;
   import net.bigpoint.seafight.com.module.guild.class_570;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_121.class_841;
   import package_133.class_500;
   import package_133.class_595;
   import package_14.class_47;
   import package_14.class_88;
   import package_15.class_273;
   import package_15.class_78;
   import package_41.class_84;
   import package_6.class_14;
   import package_80.class_1166;
   import package_80.class_1167;
   import spark.components.Label;
   
   public final class class_252 extends class_78
   {
       
      
      private var var_1607:class_1166;
      
      private var var_1720:class_1167;
      
      public function class_252(param1:class_273)
      {
         super();
         method_35(this.var_1607 = param1.var_2266);
         method_35(this.var_1720 = param1.var_2216);
      }
      
      override protected function method_1182() : Object
      {
         var _loc5_:CraftingMaterialItemVo = null;
         var _loc6_:class_595 = null;
         var _loc7_:Vector.<class_759> = null;
         var _loc8_:class_759 = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         var _loc1_:class_500 = this.var_1607.name_8;
         var _loc2_:class_864 = this.var_1720.name_8;
         if(!_loc1_ || !_loc2_)
         {
            return null;
         }
         var _loc3_:Vector.<class_595> = _loc1_.name_9;
         var _loc4_:Dictionary = new Dictionary();
         for each(_loc6_ in _loc3_)
         {
            _loc9_ = _loc6_.var_13;
            _loc10_ = class_88.method_32(class_88.const_646,_loc9_.toString());
            _loc5_ = new CraftingMaterialItemVo();
            _loc5_.id = _loc9_;
            _loc5_.name = _loc10_;
            _loc5_.percentage = _loc6_.var_482;
            _loc4_[_loc6_.var_13] = _loc5_;
         }
         _loc7_ = _loc2_.var_897;
         for each(_loc8_ in _loc7_)
         {
            _loc5_ = _loc4_[_loc8_.var_13] as CraftingMaterialItemVo;
            _loc5_.amount = _loc8_.var_10;
         }
         return _loc4_;
      }
      
      public final function method_885(param1:int) : int
      {
         var _loc2_:Dictionary = this.method_388();
         var _loc3_:CraftingMaterialItemVo = !!_loc2_?_loc2_[param1] as CraftingMaterialItemVo:null;
         return !!_loc3_?int(_loc3_.percentage):0;
      }
      
      public final function method_388() : Dictionary
      {
         return method_38() as Dictionary;
      }
      
      public final function method_2722() : Object
      {
         return this.method_1182();
      }
      
      public final function method_339() : Boolean
      {
         return this.var_1607.name_8 && this.var_1720.name_8;
      }
      
      override public function method_36() : void
      {
         method_43(this.var_1607);
         method_43(this.var_1720);
      }
   }
}
