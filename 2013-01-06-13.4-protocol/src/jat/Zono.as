package jat
{
[CLASS265]   import tysenyzy.Zovisis;
   import kirofyny.Zaqylisot;
   import qypupet.Sikyvuvus;


   public class Zono extends Zovisis
   {
      public function Zono() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Linuzape;

      public var lyhog:Zaqylisot;

      public var qidogy:Sikyvuvus;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.giqezi.zokokof.addOnce(this.zykekulucy);
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new this.qidogy.caller());
         return;
      }
   }
[/CLASS]
}