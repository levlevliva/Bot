package com.bigpoint.seafight.model.vo
{
   import com.bigpoint.seafight.model.inventory.vo.auxconf.AuxConf_VO;
   import com.bigpoint.seafight.model.inventory.vo.auxconf.DefaultAuxConf_VO;
   import com.bigpoint.seafight.net.events.class_223;
   import com.bigpoint.seafight.tools.getSWFFinisher;
   import com.bigpoint.seafight.view.common.skins.vscroller.VScrollBarSmallSkin;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingCrewInventoryVo;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import mx.states.State;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import package_138.class_523;
   import package_138.class_704;
   import package_14.class_47;
   import package_14.class_51;
   import package_143.class_1040;
   import package_23.class_42;
   import package_29.class_57;
   import package_42.class_959;
   import package_42.class_98;
   import package_5.class_123;
   import package_5.class_22;
   import package_5.class_945;
   import package_54.class_163;
   import package_6.class_14;
   import package_92.class_336;
   import package_92.class_944;
   import spark.components.VScrollBar;
   import spark.primitives.BitmapImage;
   
   public final class class_210
   {
       
      
      public var var_1126:SWFFinisher;
      
      public var name_22:class_320;
      
      public var var_1751:String;
      
      public var name_35:DisplayObject;
      
      public var var_340:class_163;
      
      public var var_1395:Boolean = false;
      
      public var var_608:int = -1;
      
      public var var_723:int = -1;
      
      public function class_210()
      {
         super();
      }
      
      public final function method_2341(param1:SWFFinisher, param2:class_320, param3:String, param4:DisplayObject, param5:class_163) : void
      {
         if(param1 && param2 && param3 && param4 && param5)
         {
            this.var_1126 = param1;
            this.name_22 = param2;
            this.var_1751 = param3;
            this.name_35 = param4;
            this.var_340 = param5;
            this.var_1395 = true;
         }
         else
         {
            this.var_1395 = false;
         }
      }
      
      public final function method_77() : void
      {
         this.var_1126 = undefined;
         this.var_1751 = undefined;
         this.name_35 = undefined;
         this.var_1395 = false;
         this.var_723 = -1;
         this.var_608 = -1;
         this.var_340 = null;
         this.name_35 = null;
      }
   }
}
