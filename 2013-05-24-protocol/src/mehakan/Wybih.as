package mehakan
{
   import komawowag.Kaquhen;
   import fozo.Cefapova;
   import kyco.Nun;
   import komawowag.Net;
   import fozo.Zajys;
   import jebaraqeq.Fivyjysej;


   public class Wybih extends Object implements Kaquhen
   {
      public function Wybih() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var synimures:Cefapova;

      private static var romy:uint;

      private const rafegimak:String = Fivyjysej.create(Wybih);

      private var pub:Nun;

      public function extend(param1:Net) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         romy++;
         this.pub=param1.cemohoqal;
         param1.fyf.ziwefidy(this.ziwefidy);
         param1.fyf.mapuzojo(this.mapuzojo);
         return;
      }

      public function toString() : String {
         return this.rafegimak;
      }

      private function ziwefidy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zajys = null;
         if(synimures==null)
         {
            _loc1_=this.pub.getInstance(Zajys);
            synimures=new Cefapova(_loc1_);
         }
         return;
      }

      private function mapuzojo() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         romy--;
         if(romy==0)
         {
            synimures.destroy();
            synimures=null;
         }
         return;
      }
   }

}