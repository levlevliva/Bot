package com.adobe.serialization.json
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.tools.dragging.IDragDropTarget;
   import com.bigpoint.seafight.tools.dragging.IDraggable;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import com.bigpoint.seafight.view.popups.common.TextButton;
   import com.bigpoint.seafight.view.popups.multipopup.vo.MultiButtonVO;
   import com.bigpoint.seafight.view.popups.shipequipment.skins.StatisticListSkin;
   import com.bigpoint.seafight.view.popups.teamscore.vo.TeamScoreVo;
   import flash.events.MouseEvent;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import package_107.class_693;
   import package_127.class_486;
   import package_14.class_47;
   import package_14.class_51;
   import package_14.class_88;
   import package_143.class_542;
   import package_143.class_933;
   import package_147.class_683;
   import package_147.class_797;
   import package_16.class_28;
   import package_167.class_972;
   import package_41.class_84;
   import package_6.class_14;
   import spark.components.Group;
   import spark.components.Label;
   import spark.components.List;
   
   public final class JSON
   {
       
      
      public function JSON()
      {
         super();
      }
      
      public static function decode(param1:String, param2:Boolean = true) : *
      {
         return new JSONDecoder(param1,param2).getValue();
      }
      
      public static function encode(param1:Object) : String
      {
         return new JSONEncoder(param1).getString();
      }
   }
}
