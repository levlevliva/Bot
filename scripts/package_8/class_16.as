package package_8
{
   import com.bigpoint.seafight.Main;
   import com.bigpoint.seafight.view.popups.boarding.vo.BoardingMenuPetsTabVo;
   import com.bigpoint.seafight.view.popups.guildmenu.player.skins.GuildMenuIslandTowerListSkin;
   import com.bigpoint.seafight.view.userInterface.class_155;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.IDataInput;
   import flash.utils.IDataOutput;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   import net.bigpoint.seafight.com.module.guild.class_826;
   import package_14.class_47;
   import package_14.class_49;
   import package_14.class_51;
   import package_14.class_87;
   import package_14.class_88;
   import package_14.class_94;
   import package_14.class_95;
   import package_14.class_96;
   import package_14.class_97;
   import package_185.class_1136;
   import package_190.class_1181;
   import package_26.class_1070;
   import package_34.class_107;
   import package_41.class_84;
   import package_45.class_110;
   import package_5.class_43;
   import package_84.class_270;
   import spark.components.Group;
   import spark.components.List;
   import spark.components.gridClasses.GridColumn;
   
   public final class class_16
   {
      
      public static var var_1947:String;
      
      public static var var_1842:String;
      
      public static var var_1983:String;
      
      public static var var_1962:String;
      
      public static var var_1814:String;
      
      public static var var_2474:String;
      
      public static var var_2015:String;
       
      
      public var var_2185:class_87;
      
      public var var_528:class_87;
      
      public var var_2412:class_88;
      
      public var var_2239:class_95;
      
      public var var_2279:class_94;
      
      public var var_2173:class_96;
      
      public var var_2344:class_97;
      
      private var var_651:Vector.<class_87>;
      
      private var name_31:Function;
      
      private var name_100:int;
      
      public function class_16()
      {
         super();
         this.var_651 = new Vector.<class_87>();
         this.name_100 = 0;
      }
      
      public final function method_68(param1:Function) : void
      {
         this.name_31 = param1;
         this.var_651.push(this.var_2185 = new class_87(var_1947,class_51.var_129,this.method_329));
         this.var_651.push(this.var_528 = new class_87(var_2015,class_51.var_129,this.method_329));
         this.var_651.push(this.var_2412 = new class_88(var_1842,class_51.var_129,this.method_329));
         this.var_651.push(this.var_2239 = new class_95(var_1983,class_51.var_129,this.method_329));
         this.var_651.push(this.var_2279 = new class_94(var_1962,class_51.var_129,this.method_329));
         this.var_651.push(this.var_2173 = new class_96(var_1814,class_51.var_129,this.method_329));
         this.var_651.push(this.var_2344 = new class_97(class_51.var_1519,class_51.var_129,this.method_329));
      }
      
      private final function method_329() : void
      {
         if(++this.name_100 < this.var_651.length)
         {
            return;
         }
         Main.LOG.info(this + ": all text resources loaded");
         this.name_31.apply();
      }
   }
}
