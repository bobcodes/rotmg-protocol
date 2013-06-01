package tidi
{
[CLASS774]   import tinava.Dab;
   import flash.utils.Dictionary;
   import cicaqyfa.Guciv;


   public class Dak extends Object
   {
      public function Dak() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.complete=new Dab();
         this.syber=new Dictionary();
         super();
         return;
      }

      public var complete:Dab;

      private var syber:Dictionary;

      public function push(param1:Dab) : Dak {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.syber[param1]=true;
         this.geced(param1);
         return this;
      }

      public function pushArgs(... rest) : Dak {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Dab = null;
         for each (_loc2_ in rest)
         {
            this.push(_loc2_);
         }
         return this;
      }

      private function geced(param1:Dab) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var onTextChanged:Function = null;
         var value:Dab = param1;
         onTextChanged=new function():void
         {
            delete syber[[value]];
            zyhyket();
            return;
         };
         value.addOnce(onTextChanged);
         return;
      }

      private function zyhyket() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.isEmpty())
         {
            this.complete.dispatch();
         }
         return;
      }

      public function isEmpty() : Boolean {
         return Guciv.qemad(this.syber).length==0;
      }
   }
[/CLASS]
}