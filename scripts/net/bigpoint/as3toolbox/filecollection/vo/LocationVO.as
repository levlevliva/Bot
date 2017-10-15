package net.bigpoint.as3toolbox.filecollection.vo
{
   import com.bigpoint.seafight.view.common.components.BriskImageDynaLib;
   import com.bigpoint.seafight.view.common.components.SF_LocaLabel;
   import mx.binding.BindingManager;
   
   public final class LocationVO
   {
       
      
      public var id:String;
      
      public var path:String;
      
      public function LocationVO(param1:String, param2:String)
      {
         super();
         this.id = param1;
         this.path = param2;
      }
   }
}
