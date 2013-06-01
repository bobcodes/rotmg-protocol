package dugahymu
{
[CLASS1116]   import flash.display.DisplayObjectContainer;


   public class Tasyjujul extends Object
   {
      public function Tasyjujul() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var target:DisplayObjectContainer;

      private var bufitot:Bisu;

      private var tafumapoq:Bisu;

      public function shift() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.target.removeChild(this.bufitot);
         this.bufitot=this.bufitot.next;
         if(this.bufitot)
         {
            this.target.addChild(this.bufitot);
         }
         else
         {
            this.tafumapoq=null;
         }
         return;
      }

      public function append(param1:Bisu) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.list=this;
         if(this.tafumapoq)
         {
            this.tafumapoq.next=param1;
            this.tafumapoq=param1;
         }
         else
         {
            this.bufitot=this.tafumapoq=param1;
            this.target.addChild(param1);
         }
         return;
      }
   }
[/CLASS]
}