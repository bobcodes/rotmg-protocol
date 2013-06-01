package syfuqycy
{
[CLASS1366]   import __AS3__.vec.Vector;


   public class Capafa extends Gyz
   {
      public function Capafa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.sotunyno=new Vector.<Gyz>();
         return;
      }

      private var sotunyno:Vector.<Gyz>;

      private var tim:int;

      public function add(param1:Gyz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sotunyno.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tim=this.sotunyno.length;
         if(this.tim>0)
         {
            this.hejotevutu();
         }
         else
         {
            pylebodyq(true);
         }
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Gyz = null;
         for each (_loc1_ in this.sotunyno)
         {
            _loc1_.reset();
         }
         return;
      }

      private function hejotevutu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.tim;
         while(_loc1_--)
         {
            this.sotunyno[_loc1_].lastly.addOnce(this.lynepe);
            this.sotunyno[_loc1_].start();
         }
         return;
      }

      private function lynepe(param1:Gyz, param2:Boolean, param3:String) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(param2)
         {
            if(--this.tim==0)
            {
               pylebodyq(true);
            }
         }
         else
         {
            pylebodyq(false,param3);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[TaskGroup("+this.sotunyno.join(",")+")]";
      }
   }
[/CLASS]
}