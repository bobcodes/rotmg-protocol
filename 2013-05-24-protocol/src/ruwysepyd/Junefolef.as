package ruwysepyd
{
   import tulunyno.Hugyqufyq;
   import flash.utils.Dictionary;
   import koqajopoq.Gory;


   public class Junefolef extends Object
   {
      public function Junefolef() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.complete=new Hugyqufyq();
         this.bar=new Dictionary();
         super();
         return;
      }

      public var complete:Hugyqufyq;

      private var bar:Dictionary;

      public function push(param1:Hugyqufyq) : Junefolef {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bar[param1]=true;
         this.wuj(param1);
         return this;
      }

      public function pushArgs(... rest) : Junefolef {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Hugyqufyq = null;
         for each (_loc2_ in rest)
         {
            this.push(_loc2_);
         }
         return this;
      }

      private function wuj(param1:Hugyqufyq) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var onTextChanged:Function = null;
         var value:Hugyqufyq = param1;
         onTextChanged=new function():void
         {
            delete bar[[value]];
            waqune();
            return;
         };
         value.addOnce(onTextChanged);
         return;
      }

      private function waqune() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.isEmpty())
         {
            this.complete.dispatch();
         }
         return;
      }

      public function isEmpty() : Boolean {
         return Gory.naqihib(this.bar).length==0;
      }
   }

}