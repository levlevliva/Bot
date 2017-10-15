package com.bigpoint.seafight.view.popups.quest.regular
{
   import com.bigpoint.seafight.view.popups.common.PopupSubHeader;
   import com.bigpoint.seafight.view.popups.quest.npc.component.NpcQuestList;
   import com.bigpoint.seafight.view.popups.quest.npc.vo.NpcQuestPopupVo;
   import com.bigpoint.seafight.view.userInterface.widgets.menus.components.SFAccordion;
   import mx.core.IInvalidating;
   import mx.core.IVisualElement;
   import spark.components.Group;
   
   public interface IQuestPopup extends IVisualElement, IInvalidating
   {
       
      
      function getSubHeader() : PopupSubHeader;
      
      function getList(param1:int) : NpcQuestList;
      
      function getListAt(param1:int) : NpcQuestList;
      
      function getAccordionContainer() : SFAccordion;
      
      function getContentGroup() : Group;
      
      function enableView(param1:Boolean) : void;
      
      function set data(param1:NpcQuestPopupVo) : void;
   }
}
