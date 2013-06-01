package syfuqycy
{
[CLASS664]

   public class Nizus extends Gyz
   {
      public function Nizus(param1:Motumeq, param2:Motumeq=null, param3:Motumeq=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.pitegum=param1;
         this.success=param2;
         this.failure=param3;
         return;
      }

      private var pitegum:Motumeq;

      private var success:Motumeq;

      private var failure:Motumeq;

      public function hujufy(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.success=param1;
         return;
      }

      public function haduqez(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.failure=param1;
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pitegum.gegyco.addOnce(this.lynepe);
         this.pitegum.start();
         return;
      }

      private function lynepe(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param2)
         {
            this.wulyhuki(this.success);
         }
         else
         {
            this.wulyhuki(this.failure);
         }
         return;
      }

      private function wulyhuki(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            param1.gegyco.addOnce(this.kafu);
            param1.start();
         }
         else
         {
            pylebodyq(true);
         }
         return;
      }

      private function kafu(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         pylebodyq(param2,param3);
         return;
      }
   }
[/CLASS]
}