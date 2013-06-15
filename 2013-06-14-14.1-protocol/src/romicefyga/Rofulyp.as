package romicefyga
{
   import hunavefeg.Qoheqa;
   import cigo.Faruge;
   import dyca.Mes;
   import hunavefeg.Hyne;
   import cigo.Fipyqoleb;
   import donaqyzas.Rabymuse;


   public class Rofulyp extends Object implements Qoheqa
   {
      public function Rofulyp() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var nufo:Faruge;

      private static var tibo:uint;

      private const mohabahi:String = Rabymuse.create(Rofulyp);

      private var vybility:Mes;

      public function extend(param1:Hyne) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         tibo++;
         this.vybility=param1.difas;
         param1.wumeci.cityb(this.cityb);
         param1.wumeci.cybif(this.cybif);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function cityb() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Fipyqoleb = null;
         if(nufo==null)
         {
            _loc1_=this.vybility.getInstance(Fipyqoleb);
            nufo=new Faruge(_loc1_);
         }
         return;
      }

      private function cybif() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         tibo--;
         if(tibo==0)
         {
            nufo.destroy();
            nufo=null;
         }
         return;
      }
   }

}