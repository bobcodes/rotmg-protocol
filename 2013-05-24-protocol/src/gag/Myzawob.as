package gag
{
   import tulunyno.Hugyqufyq;


   public class Myzawob extends Fijarih
   {
      public function Myzawob(param1:Hugyqufyq, ... rest) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.jejowiqo=param1;
         this.params=rest;
         return;
      }

      private var jejowiqo:Hugyqufyq;

      private var params:Array;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jejowiqo.dispatch.apply(null,this.params);
         syjavimu(true);
         return;
      }
   }

}