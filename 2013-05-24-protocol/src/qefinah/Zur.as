package qefinah
{
   import flash.display.DisplayObjectContainer;


   public class Zur extends Object
   {
      public function Zur() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var target:DisplayObjectContainer;

      private var naril:Vujesewo;

      private var wukycasew:Vujesewo;

      public function shift() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.target.removeChild(this.naril);
         this.naril=this.naril.next;
         if(this.naril)
         {
            this.target.addChild(this.naril);
         }
         else
         {
            this.wukycasew=null;
         }
         return;
      }

      public function append(param1:Vujesewo) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.list=this;
         if(this.wukycasew)
         {
            this.wukycasew.next=param1;
            this.wukycasew=param1;
         }
         else
         {
            this.naril=this.wukycasew=param1;
            this.target.addChild(param1);
         }
         return;
      }
   }

}