package ruf
{
[CLASS173]   import bikyvym.Lofaqy;
   import dylaqezo.Vusun;
   import rysuho.Loku;
   import kuniv.Nogofado;


   public class Sejorage extends Object implements Lofaqy
   {
      public function Sejorage() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jojun:Vusun;

      public var vume:Loku;

      public var batyzoqu:Nogofado;

      public function approve() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.jojun.gagesuno()>=this.batyzoqu.price;
         if(!_loc1_)
         {
            this.vume.dispatch();
         }
         return _loc1_;
      }
   }
[/CLASS]
}