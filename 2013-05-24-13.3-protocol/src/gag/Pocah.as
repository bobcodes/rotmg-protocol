package gag
{
   import __AS3__.vec.Vector;


   public class Pocah extends Fijarih
   {
      public function Pocah() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.cen=new Vector.<Fijarih>();
         return;
      }

      private var cen:Vector.<Fijarih>;

      private var muha:int;

      public function add(param1:Fijarih) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cen.push(param1);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.muha=this.cen.length;
         if(this.muha>0)
         {
            this.jykygi();
         }
         else
         {
            syjavimu(true);
         }
         return;
      }

      override protected function onReset() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Fijarih = null;
         for each (_loc1_ in this.cen)
         {
            _loc1_.reset();
         }
         return;
      }

      private function jykygi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.muha;
         while(_loc1_--)
         {
            this.cen[_loc1_].lastly.addOnce(this.gahonub);
            this.cen[_loc1_].start();
         }
         return;
      }

      private function gahonub(param1:Fijarih, param2:Boolean, param3:String) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(param2)
         {
            if(--this.muha==0)
            {
               syjavimu(true);
            }
         }
         else
         {
            syjavimu(false,param3);
         }
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "[TaskGroup("+this.cen.join(",")+")]";
      }
   }

}