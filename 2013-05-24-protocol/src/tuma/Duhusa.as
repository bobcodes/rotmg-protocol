package tuma
{
   import fulaw.Vihekivuc;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import fulaw.Wuduler;


   public class Duhusa extends Object
   {
      public function Duhusa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var classes:Vihekivuc;

      public function execute() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.classes.dymy();
         var _loc2_:* = 0;
         while(_loc2_<_loc1_)
         {
            this.camajaf(this.classes.tonit(_loc2_));
            _loc2_++;
         }
         return;
      }

      private function camajaf(param1:Jimi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.piloni(param1.id==Vihekivuc.fogybym);
         this.puvawete(param1);
         return;
      }

      private function puvawete(param1:Jimi) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Dasin = null;
         var _loc2_:Dasin = param1.socucu.mucosahuh();
         var _loc3_:int = param1.socucu.dymy();
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param1.socucu.diben(_loc4_);
            if(_loc5_!=_loc2_)
            {
               this.nypuvuk(param1.socucu.diben(_loc4_));
            }
            _loc4_++;
         }
         return;
      }

      private function nypuvuk(param1:Dasin) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setState(Wuduler.LOCKED);
         return;
      }
   }

}