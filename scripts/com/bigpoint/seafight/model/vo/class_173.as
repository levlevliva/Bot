package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.DefaultQuestItem_VO;
   import com.bigpoint.seafight.model.inventory.vo.nonperishable.QuestItem_VO;
   import com.bigpoint.seafight.tools.class_1025;
   import com.bigpoint.seafight.tools.class_177;
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.userInterface.class_209;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import package_132.class_494;
   import package_132.class_605;
   import package_14.class_102;
   import package_41.class_84;
   import package_41.class_89;
   import package_5.class_945;
   import package_6.class_14;
   import spark.components.HGroup;
   
   public class class_173 extends class_172
   {
       
      
      public var name_14:int;
      
      public var var_743:int;
      
      public var var_432:Number = 0;
      
      public var var_16:int;
      
      public var var_44:String;
      
      public var name_20:class_89;
      
      public var var_154:String;
      
      public var var_1190:int;
      
      public var var_190:int;
      
      public var var_356:int;
      
      public var var_545:Boolean;
      
      public var var_2086:Boolean;
      
      public var var_983:int;
      
      public var var_383:class_84;
      
      public var var_665:int;
      
      public var var_2023:Boolean = false;
      
      public var var_1032:Boolean = false;
      
      public var var_685:Boolean = false;
      
      public var var_169:Vector.<int>;
      
      public var var_556:Boolean = false;
      
      public var var_1754:int;
      
      public var var_957:int;
      
      public var var_1222:int = 0;
      
      public var var_198:int = 0;
      
      public var var_599:class_1033;
      
      public var name_59:class_1031;
      
      public var var_850:int = 0;
      
      public var var_58:int = 0;
      
      public var var_1051:int = 0;
      
      private var var_2129:int;
      
      public function class_173()
      {
         this.var_599 = new class_1033();
         this.name_59 = new class_1031();
         super();
      }
      
      public final function method_1654() : void
      {
         if(this.name_14 == class_945.const_43)
         {
            var_240 = class_209.const_76;
         }
         else if(!this.var_545)
         {
            var_240 = class_209.const_242;
            var_1138 = class_209.const_1329;
         }
         else
         {
            var_240 = class_209.const_242;
            var_1138 = class_209.const_159;
         }
      }
      
      public function get method_695() : int
      {
         return this.var_2129;
      }
      
      public function set method_695(param1:int) : void
      {
         this.var_2129 = param1 == 0?10:int(param1);
      }
   }
}
