package gycu
{
   import mukyrosu.Qanyduk;


   public class Levoje extends Siv
   {
      public function Levoje(param1:Qanyduk, ... rest) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.cumu=param1;
         this.params=rest;
         return;
      }

      private var cumu:Qanyduk;

      private var params:Array;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cumu.dispatch.apply(null,this.params);
         dom(true);
         return;
      }
   }

}