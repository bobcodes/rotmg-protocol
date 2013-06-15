package gycu
{
   import __AS3__.vec.Vector;


   public class Feliro extends Object
   {
      public function Feliro() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.ryp=new Vector.<Cyqe>(0);
         return;
      }

      private var ryp:Vector.<Cyqe>;

      public function add(param1:Cyqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ryp.push(param1);
         param1.byqato.addOnce(this.fobap);
         return;
      }

      public function porem(param1:Cyqe) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(this.ryp.indexOf(param1)==-1);
      }

      private function fobap(param1:Cyqe, param2:Boolean, param3:String="") : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.ryp.splice(this.ryp.indexOf(param1),1);
         return;
      }
   }

}