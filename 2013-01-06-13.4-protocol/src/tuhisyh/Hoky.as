package tuhisyh
{
[CLASS72]   import bikyvym.Lofaqy;
   import leselo.Account;
   import kirofyny.Hehuf;
   import sojul.Viropisos;


   public class Hoky extends Object implements Lofaqy
   {
      public function Hoky() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var lyhog:Hehuf;

      public function approve() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.account.tuq();
         return _loc1_;
      }

      protected function getString() : String {
         return "";
      }

      private function paroza() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new Viropisos(this.getString()));
         return;
      }
   }
[/CLASS]
}