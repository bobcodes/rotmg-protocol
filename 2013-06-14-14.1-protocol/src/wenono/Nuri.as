package wenono
{
   import mukyrosu.Qanyduk;
   import flash.utils.Dictionary;
   import nyri.Cenezadi;


   public class Nuri extends Object
   {
      public function Nuri() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.complete=new Qanyduk();
         this.rumyco=new Dictionary();
         super();
         return;
      }

      public var complete:Qanyduk;

      private var rumyco:Dictionary;

      public function push(param1:Qanyduk) : Nuri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rumyco[param1]=true;
         this.pocobapa(param1);
         return this;
      }

      public function pushArgs(... rest) : Nuri {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Qanyduk = null;
         for each (_loc2_ in rest)
         {
            this.push(_loc2_);
         }
         return this;
      }

      private function pocobapa(param1:Qanyduk) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var onTextChanged:Function = null;
         var value:Qanyduk = param1;
         onTextChanged=new function():void
         {
            GlobalNotificationActionte rumyco[[value]];
            nakylugo();
            return;
         };
         value.addOnce(onTextChanged);
         return;
      }

      private function nakylugo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.isEmpty())
         {
            this.complete.dispatch();
         }
         return;
      }

      public function isEmpty() : Boolean {
         return Cenezadi.kafome(this.rumyco).length==0;
      }
   }

}