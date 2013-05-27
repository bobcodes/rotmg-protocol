package dulywywo
{
   import __AS3__.vec.Vector;


   public class Gege extends Object
   {
      public function Gege() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cikehe=new Vector.<Julec>();
         super();
         return;
      }

      private var cikehe:Vector.<Julec>;

      private var dehajewys:int = 0;

      public function qutofiz(param1:Julec) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.cikehe.length=this.dehajewys;
         param1.execute();
         this.cikehe.push(param1);
         this.dehajewys++;
         return;
      }

      public function fega() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.dehajewys==0)
         {
            return;
         }
         this.cikehe[--this.dehajewys].unexecute();
         return;
      }

      public function zeware() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.dehajewys==this.cikehe.length)
         {
            return;
         }
         this.cikehe[this.dehajewys++].execute();
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dehajewys=0;
         this.cikehe.length=0;
         return;
      }
   }

}