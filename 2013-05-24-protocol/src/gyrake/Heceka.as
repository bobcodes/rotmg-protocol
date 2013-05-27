package gyrake
{
   import com.company.util.MoreColorUtil;
   import flash.geom.ColorTransform;
   import aaa.rotmg.config.UserConfig;
   import flash.events.Event;


   public class Heceka extends Games
   {
      public function Heceka(param1:String, param2:String, param3:String, param4:Boolean=false) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         super(param1,param2,param3);
         this.cogyhip=new KeyCodeBox(UserConfig.data_[ruhunydyw]);
         this.cogyhip.addEventListener(Event.CHANGE,this.kosu);
         addChild(this.cogyhip);
         this.tyreqar(param4);
         return;
      }

      private var cogyhip:KeyCodeBox;

      private var bapezeny:Boolean;

      public function tyreqar(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bapezeny=param1;
         transform.colorTransform=this.bapezeny?MoreColorUtil.gejuk:MoreColorUtil.identity;
         mouseEnabled=!this.bapezeny;
         mouseChildren=!this.bapezeny;
         return;
      }

      override public function refresh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cogyhip.vagudaf(UserConfig.data_[ruhunydyw]);
         return;
      }

      private function kosu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         UserConfig.setKey(ruhunydyw,this.cogyhip.value());
         UserConfig.save();
         return;
      }
   }

}