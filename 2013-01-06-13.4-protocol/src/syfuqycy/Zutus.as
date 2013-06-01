package syfuqycy
{
[CLASS668]   import __AS3__.vec.Vector;


   public class Zutus extends Gyz
   {
      public function Zutus() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.sotunyno=new Vector.<Motumeq>();
         return;
      }

      private var sotunyno:Vector.<Motumeq>;

      private var index:int;

      private var rosenoram:Boolean;

      public function lucyjanob() : Boolean {
         return this.rosenoram;
      }

      public function gucohiq(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rosenoram=param1;
         return;
      }

      public function add(param1:Motumeq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sotunyno.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.index=0;
         this.polufy();
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Motumeq = null;
         for each (_loc1_ in this.sotunyno)
         {
            _loc1_.reset();
         }
         return;
      }

      private function polufy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.maz())
         {
            this.von();
         }
         else
         {
            pylebodyq(true);
         }
         return;
      }

      private function maz() : Boolean {
         return this.index<this.sotunyno.length;
      }

      private function von() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Motumeq = this.sotunyno[this.index++];
         _loc1_.lastly.addOnce(this.lynepe);
         _loc1_.start();
         return;
      }

      private function lynepe(param1:Motumeq, param2:Boolean, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if((param2)||(this.rosenoram))
         {
            this.polufy();
         }
         else
         {
            pylebodyq(false,param3);
         }
         return;
      }
   }
[/CLASS]
}