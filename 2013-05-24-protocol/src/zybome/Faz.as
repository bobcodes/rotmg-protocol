package zybome
{
   import hotewa.Baqifa;
   import raqu.Calogu;
   import flash.display.Sprite;
   import gag.Gawu;
   import dopumitud.Wib;
   import sakugyt.Nalenym;
   import gag.Cub;
   import gag.Myzawob;


   public class Faz extends Object
   {
      public function Faz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var model:Baqifa;

      public var zogytuso:Calogu;

      public var view:Sprite;

      public var rurusedi:Gawu;

      public var zoritu:Wib;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.model.napabapuq)
         {
            this.niwakef();
         }
         else
         {
            this.zogytuso.dispatch(this.view);
         }
         return;
      }

      private function niwakef() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zogytuso.dispatch(new Nalenym());
         var _loc1_:Cub = new Cub();
         _loc1_.add(this.zoritu);
         _loc1_.add(new Myzawob(this.zogytuso,this.view));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}