package kofaz
{
   import dicyl.Purocumi;
   import com.company.assembleegameclient.game.Hunej;


   public class Jopiqyqan extends Object
   {
      public function Jopiqyqan() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var silalifys:Purocumi;

      public var view:GiftStatusDisplay;

      public var liwemocyr:Hunej;

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.silalifys.add(this.nipabikov);
         if(this.liwemocyr.tiroqaji)
         {
            this.view.guramen();
         }
         else
         {
            this.view.coqyvem();
         }
         return;
      }

      private function nipabikov() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.liwemocyr.tiroqaji)
         {
            this.view.guramen();
         }
         else
         {
            this.view.coqyvem();
         }
         return;
      }
   }

}