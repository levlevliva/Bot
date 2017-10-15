package com.bigpoint.seafight.view.popups.guildmenu.player.vo
{
   import com.bigpoint.seafight.view.common.components.BriskBitmapFill;
   import com.bigpoint.seafight.view.popups.quest.IWindowController;
   import com.bigpoint.seafight.view.popups.vo.ContentVo;
   
   public final class PlayerGuildWindowNaviPopupVo extends ContentVo
   {
       
      
      public var menueEntries:Vector.<String>;
      
      public var viewController:Vector.<IWindowController>;
      
      public function PlayerGuildWindowNaviPopupVo()
      {
         super();
      }
   }
}
