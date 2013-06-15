package taz
{
   import __AS3__.vec.Vector;


   public class Kijube extends Object
   {
      public function Kijube() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.toqipe=new Vector.<Qetijiha>();
         super();
         return;
      }

      private var toqipe:Vector.<Qetijiha>;

      private var fenykihun:int = 0;

      public function tynyva(param1:Qetijiha) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.toqipe.length=this.fenykihun;
         param1.execute();
         this.toqipe.push(param1);
         this.fenykihun++;
         return;
      }

      public function hugede() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.fenykihun==0)
         {
            return;
         }
         this.toqipe[--this.fenykihun].unexecute();
         return;
      }

      public function lucijyfub() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.fenykihun==this.toqipe.length)
         {
            return;
         }
         this.toqipe[this.fenykihun++].execute();
         return;
      }

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fenykihun=0;
         this.toqipe.length=0;
         return;
      }
   }

}