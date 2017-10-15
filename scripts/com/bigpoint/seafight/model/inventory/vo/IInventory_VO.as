package com.bigpoint.seafight.model.inventory.vo
{
   import net.bigpoint.seafight.com.module.setting.clientconfig.defaultitems.ams.class_830;
   
   public interface IInventory_VO
   {
       
      
      function get itemID() : int;
      
      function get amount() : Number;
      
      function get default_VO() : IModel_VO;
      
      function set default_VO(param1:IModel_VO) : void;
      
      function get item_VO() : *;
      
      function get amsContainers() : Vector.<class_830>;
   }
}
