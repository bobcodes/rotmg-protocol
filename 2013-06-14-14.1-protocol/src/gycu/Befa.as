package gycu
{


   public class Befa extends Siv
   {
      public function Befa(param1:Cyqe, param2:Cyqe=null, param3:Cyqe=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.zop=param1;
         this.success=param2;
         this.failure=param3;
         return;
      }

      private var zop:Cyqe;

      private var success:Cyqe;

      private var failure:Cyqe;

      public function dytunepos(param1:Cyqe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.success=param1;
         return;
      }

      public function vowakoty(param1:Cyqe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.failure=param1;
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zop.byqato.addOnce(this.fobap);
         this.zop.start();
         return;
      }

      private function fobap(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2)
         {
            this.kehugybi(this.success);
         }
         else
         {
            this.kehugybi(this.failure);
         }
         return;
      }

      private function kehugybi(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            param1.byqato.addOnce(this.niqovovi);
            param1.start();
         }
         else
         {
            dom(true);
         }
         return;
      }

      private function niqovovi(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         dom(param2,param3);
         return;
      }
   }

}