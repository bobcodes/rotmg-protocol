package tubovetyc
{
[CLASS1637]   import __AS3__.vec.Vector;


   public class Rufigel extends Object
   {
      public function Rufigel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hovalu=new Vector.<Sugamucol>();
         super();
         return;
      }

      private var hovalu:Vector.<Sugamucol>;

      private var zegub:int = 0;

      public function fuquqen(param1:Sugamucol) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.hovalu.length=this.zegub;
         param1.execute();
         this.hovalu.push(param1);
         this.zegub++;
         return;
      }

      public function gowyneho() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.zegub==0)
         {
            return;
         }
         this.hovalu[--this.zegub].unexecute();
         return;
      }

      public function selovy() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.zegub==this.hovalu.length)
         {
            return;
         }
         this.hovalu[this.zegub++].execute();
         return;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zegub=0;
         this.hovalu.length=0;
         return;
      }
   }
[/CLASS]
}