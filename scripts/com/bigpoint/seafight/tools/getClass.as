package com.bigpoint.seafight.tools
{
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
   public function getClass(param1:Object) : Class
   {
      return getDefinitionByName(getQualifiedClassName(param1)) as Class;
   }
}
