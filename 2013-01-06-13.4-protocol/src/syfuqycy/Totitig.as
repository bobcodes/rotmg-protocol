package syfuqycy
{
[CLASS346]   import __AS3__.vec.Vector;


   public class Totitig extends Object
   {
      public function Totitig() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.sotunyno=new Vector.<Motumeq>(0);
         return;
      }

      private var sotunyno:Vector.<Motumeq>;

      public function add(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sotunyno.push(param1);
         param1.gegyco.addOnce(this.lynepe);
         return;
      }

      public function kynig(param1:Motumeq) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(this.sotunyno.indexOf(param1)==-1);
      }

      private function lynepe(param1:Motumeq, param2:Boolean, param3:String="") : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.sotunyno.splice(this.sotunyno.indexOf(param1),1);
         return;
      }
   }
[/CLASS]
}