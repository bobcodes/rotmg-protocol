package vic
{
[CLASS388]   import bikyvym.Mive;
   import korer.Fiwocazut;
   import pogefeqeh.Wahovy;
   import suzu.Naneciry;
   import bikyvym.Cedymynet;
   import korer.Focy;
   import fomykuq.Sedubali;


   public class Givuniv extends Object implements Mive
   {
      public function Givuniv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var tuwi:Fiwocazut;

      private const pubutahic:String = Sedubali.create(Givuniv);

      private var qod:Wahovy;

      private var qohuwen:Naneciry;

      public function extend(param1:Cedymynet) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qod=param1.viqelo;
         tuwi=(tuwi)||(new Fiwocazut());
         this.qod.map(Fiwocazut).zoru(tuwi);
         this.qod.map(Naneciry).dib(Focy);
         param1.sutu.zubyfi(this.zubyfi);
         param1.sutu.hypyry(this.hypyry);
         return;
      }

      public function toString() : String {
         return this.pubutahic;
      }

      private function zubyfi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qohuwen=this.qod.getInstance(Naneciry);
         return;
      }

      private function hypyry() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qohuwen.gabyga();
         this.qod.gihacas(Naneciry);
         this.qod.gihacas(Fiwocazut);
         return;
      }
   }
[/CLASS]
}