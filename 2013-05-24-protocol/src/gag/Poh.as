package gag
{


   public class Poh extends Fijarih
   {
      public function Poh(param1:Bysyg, param2:Bysyg=null, param3:Bysyg=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.zoritu=param1;
         this.success=param2;
         this.failure=param3;
         return;
      }

      private var zoritu:Bysyg;

      private var success:Bysyg;

      private var failure:Bysyg;

      public function nunubepyk(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.success=param1;
         return;
      }

      public function neqowote(param1:Bysyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.failure=param1;
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zoritu.davifuju.addOnce(this.gahonub);
         this.zoritu.start();
         return;
      }

      private function gahonub(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2)
         {
            this.bojogyn(this.success);
         }
         else
         {
            this.bojogyn(this.failure);
         }
         return;
      }

      private function bojogyn(param1:Bysyg) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            param1.davifuju.addOnce(this.tujihuwo);
            param1.start();
         }
         else
         {
            syjavimu(true);
         }
         return;
      }

      private function tujihuwo(param1:Bysyg, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         syjavimu(param2,param3);
         return;
      }
   }

}