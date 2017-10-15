package com.bigpoint.seafight.view.userInterface
{
   import com.bigpoint.seafight.tools.class_13;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.popups.common.table.CommonListSkin;
   import com.bigpoint.seafight.view.popups.multipopup.MultiPopUpManager;
   import flash.text.StyleSheet;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import package_14.class_47;
   import package_14.class_96;
   import package_170.class_979;
   import package_32.class_64;
   import package_41.class_84;
   import package_5.class_123;
   import package_5.class_43;
   import package_88.class_1093;
   import package_9.class_91;
   import spark.components.List;
   import spark.primitives.Rect;
   
   public final class class_208 extends class_149
   {
       
      
      private var var_48:SWFFinisher;
      
      private var var_18:XML;
      
      private var var_891:class_1093;
      
      private var var_85:StyleSheet;
      
      public function class_208(param1:XML, param2:StyleSheet)
      {
         super(class_47.method_22.method_28("target_info_edit_mode_label",false,false),true);
         this.var_85 = param2;
         this.var_18 = param1;
         var_37 = class_43.const_549;
         var_46 = class_43.const_489;
         this.var_48 = getSWFFinisher(class_123.const_20);
         this.x = this.var_18.@xPos;
         this.y = this.var_18.@yPos;
      }
      
      public final function method_626(param1:class_84, param2:String, param3:int, param4:int, param5:int = 0, param6:int = 0) : class_1093
      {
         if(this.method_204 != null)
         {
            if(class_177.method_52(this.method_204.method_332,param1))
            {
               return this.method_204;
            }
         }
         this.method_926();
         this.var_891 = new class_1093();
         this.var_891.alpha = 0;
         this.var_891.visible = true;
         this.var_891.name_16(this.var_18.battleInfo[0],this.var_85,param1,param2,param3,param4,param5,param6);
         addChild(this.var_891);
         class_64.method_21().method_84(this.var_891,class_13.method_78(this.var_18.@tooltipKey));
         return this.method_204;
      }
      
      public final function method_926() : void
      {
         if(this.method_204 != null)
         {
            try
            {
               class_64.method_21().method_287(this.method_204);
               removeChild(this.method_204);
            }
            catch(e:Error)
            {
            }
            this.var_891 = null;
         }
      }
      
      public function get method_204() : class_1093
      {
         return this.var_891;
      }
   }
}
