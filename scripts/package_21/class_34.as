package package_21
{
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.system.Security;
   import flash.text.Font;
   import flash.utils.IDataOutput;
   import net.bigpoint.seafight.com.module.guild.class_913;
   import package_14.class_286;
   
   public final class class_34 extends Sprite
   {
      
      public static var var_1958:Class = class_197;
       
      
      public function class_34()
      {
         super();
         Security.allowDomain("package_1");
         Security.allowInsecureDomain("package_1");
         Font.registerFont(var_1958);
      }
   }
}
