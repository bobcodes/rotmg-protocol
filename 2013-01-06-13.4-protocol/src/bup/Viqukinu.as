package bup
{
[CLASS53]   import syfuqycy.Gyz;
   import pogefeqeh.Wahovy;
   import bikyvym.Voduzak;
   import tar.Ziqa;
   import tar.Vok;
   import __AS3__.vec.Vector;
   import gecynoju.Jyj;
   import syfuqycy.Motumeq;


   public class Viqukinu extends Gyz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Viqukinu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const hawaker:int = int.MAX_VALUE;

      public var viqelo:Wahovy;

      public var wop:Voduzak;

      public function wok(param1:Class, param2:int=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Ziqa = new Ziqa();
         _loc3_.viqelo=this.viqelo;
         _loc3_.fit=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      public function niw(param1:Class, param2:int=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vok = new Vok();
         _loc3_.viqelo=this.viqelo;
         _loc3_.hyfuwumel=param1;
         _loc3_.priority=param2;
         this.list.push(_loc3_);
         return;
      }

      private const list:Vector.<Jyj> = new Vector.<Jyj>(0);

      private var index:int = 0;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.list.sort(this.byquziged);
         this.index=0;
         this.polufy();
         return;
      }

      private function byquziged(param1:Jyj, param2:Jyj) : int {
         return param1.dizabewy()-param2.dizabewy();
      }

      private function polufy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
         return this.index<this.list.length;
      }

      private function von() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Motumeq = this.list[this.index++].make();
         _loc1_.lastly.addOnce(this.lynepe);
         this.wop.info("StartupSequence start:{0}",[_loc1_]);
         _loc1_.start();
         return;
      }

      private function lynepe(param1:Motumeq, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.wop.info("StartupSequence finish:{0} (isOK: {1})",[param1,param2]);
         if(param2)
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