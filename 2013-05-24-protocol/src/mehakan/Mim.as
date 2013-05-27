package mehakan
{
   import komawowag.Kaquhen;
   import fozo.Vyloweraf;
   import kyco.Nun;
   import komawowag.Net;
   import fozo.Zajys;
   import jebaraqeq.Fivyjysej;


   public class Mim extends Object implements Kaquhen
   {
      public function Mim() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var maz:Vyloweraf;

      private static var romy:uint;

      private const rafegimak:String = Fivyjysej.create(Mim);

      private var pub:Nun;

      public function extend(param1:Net) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zajys = null;
         if(maz==null)
         {
            _loc1_=this.pub.getInstance(Zajys);
            maz=new Vyloweraf(_loc1_);
         }
         return;
      }

      private function mapuzojo() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         romy--;
         if(romy==0)
         {
            maz.destroy();
            maz=null;
         }
         return;
      }
   }

}