package cerywij
{
   import flash.display.DisplayObjectContainer;


   public class Zyze extends Object
   {
      public function Zyze() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var target:DisplayObjectContainer;

      private var ryvulavaj:Hoheje;

      private var qyr:Hoheje;

      public function shift() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.target.removeChild(this.ryvulavaj);
         this.ryvulavaj=this.ryvulavaj.next;
         if(this.ryvulavaj)
         {
            this.target.addChild(this.ryvulavaj);
         }
         else
         {
            this.qyr=null;
         }
         return;
      }

      public function append(param1:Hoheje) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.list=this;
         if(this.qyr)
         {
            this.qyr.next=param1;
            this.qyr=param1;
         }
         else
         {
            this.ryvulavaj=this.qyr=param1;
            this.target.addChild(param1);
         }
         return;
      }
   }

}