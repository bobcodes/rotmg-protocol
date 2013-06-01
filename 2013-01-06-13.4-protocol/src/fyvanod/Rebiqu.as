package fyvanod
{
[CLASS279]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import kirofyny.Hehuf;
   import qypupet.Sikyvuvus;


   public class Rebiqu extends Zovisis
   {
      public function Rebiqu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetFeeder;

      public var lycufasoc:Tuhyfutos;

      public var lyhog:Hehuf;

      public var qidogy:Sikyvuvus;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.qidogy.jaq)
         {
            this.qidogy.jaq=this.lycufasoc.kodu();
         }
         this.view.initialize(this.qidogy);
         this.view.zate.addOnce(this.zate);
         return;
      }

      private function zate() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qidogy.selected=Sikyvuvus.LEFT;
         return;
      }
   }
[/CLASS]
}