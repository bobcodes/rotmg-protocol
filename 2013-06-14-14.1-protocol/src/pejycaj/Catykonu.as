package pejycaj
{
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;
   import komi.Vibemod;


   public class Catykonu extends Sprite
   {
      public function Catykonu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const gigopefo:Liwyny = this.nagofajyt();

      private const hilyki:Kybidu = new Kybidu();

      private function nagofajyt() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(24).setBold(true).setColor(16777215);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         addChild(_loc1_);
         return _loc1_;
      }

      public function lano(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gigopefo.setStringBuilder(this.hilyki.setParams(Vibemod.vugesevi,{waveNumber:param1}));
         return;
      }
   }

}