package hyzuhot
{
[CLASS398]   import bikyvym.Mive;
   import pogefeqeh.Wahovy;
   import bikyvym.Voduzak;
   import bikyvym.Cedymynet;
   import cakiqen.instanceOf;
   import flash.display.DisplayObjectContainer;
   import fomykuq.Sedubali;


   public class Mukeqef extends Object implements Mive
   {
      public function Mukeqef() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const pubutahic:String = Sedubali.create(Mukeqef);

      private var qod:Wahovy;

      private var vuwir:Voduzak;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qod=param1.viqelo;
         this.vuwir=param1.diruboli(this);
         param1.peq(instanceOf(DisplayObjectContainer),this.pizutuw);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function pizutuw(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qod.kelovohiv(DisplayObjectContainer))
         {
            this.vuwir.zygugoqi("A contextView has already been mapped, ignoring {0}",[param1]);
         }
         else
         {
            this.vuwir.debug("Mapping {0} as contextView",[param1]);
            this.qod.map(DisplayObjectContainer).zoru(param1);
         }
         return;
      }
   }
[/CLASS]
}