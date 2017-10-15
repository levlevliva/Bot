package package_48
{
   import net.bigpoint.seafight.com.module.guild.class_749;
   import net.bigpoint.seafight.com.module.minigame.MinigameType;
   
   public final class class_132 extends class_126
   {
      
      private static var name_55:class_132;
       
      
      public function class_132()
      {
         super(MinigameType);
      }
      
      public static function get name_3() : class_132
      {
         return !!name_55?name_55:name_55 = new class_132();
      }
   }
}
