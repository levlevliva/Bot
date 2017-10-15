package com.bigpoint.seafight.view.popups.leaguemenu.vo
{
   import com.bigpoint.seafight.model.vo.class_1023;
   import com.bigpoint.seafight.model.vo.class_1371;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxLevelItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.island.vo.ComboBoxTowerModeItemVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.vo.TowerListItemVo;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.collections.ArrayList;
   import mx.events.FlexEvent;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_681;
   import package_121.class_841;
   import package_14.class_51;
   import package_5.class_22;
   import package_57.class_171;
   import package_89.class_1011;
   import spark.components.Label;
   import spark.components.List;
   
   public final class LeagueWindowNaviPopupVo extends ContentVo
   {
       
      
      public var menueEntries:Vector.<String>;
      
      public var viewController:Vector.<IWindowController>;
      
      public function LeagueWindowNaviPopupVo()
      {
         super();
      }
   }
}
