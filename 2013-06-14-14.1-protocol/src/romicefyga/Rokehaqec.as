package romicefyga
{
   import hunavefeg.Qoheqa;
   import cigo.Cypa;
   import dyca.Mes;
   import hunavefeg.Hyne;
   import cigo.Fipyqoleb;
   import donaqyzas.Rabymuse;


   public class Rokehaqec extends Object implements Qoheqa
   {
      public function Rokehaqec() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var tocycipov:Cypa;

      private static var tibo:uint;

      private const mohabahi:String = Rabymuse.create(Rokehaqec);

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
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fipyqoleb = null;
         if(tocycipov==null)
         {
            _loc1_=this.vybility.getInstance(Fipyqoleb);
            tocycipov=new Cypa(_loc1_);
         }
         return;
      }

      private function cybif() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         tibo--;
         if(tibo==0)
         {
            tocycipov.destroy();
            tocycipov=null;
         }
         return;
      }
   }

}