package liz
{
[CLASS1355]   import nupuq.Kus;
   import nupuq.Gopydysep;
   import nupuq.Gyme;
   import nupuq.Pequjowew;
   import nupuq.Pyfapobe;
   import zaw.Lynu;


   public class Wucumuzet extends Object
   {
      public function Wucumuzet() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Kus;

      public var gyh:Gopydysep;

      public var gopydyh:Gyme;

      public var lajoquwu:Pequjowew;

      public var qupezihan:Pyfapobe;

      public function execute() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Lynu = null;
         _loc1_=new Lynu();
         _loc1_.name="list";
         _loc1_.description="lists available console commands";
         var _loc2_:Lynu = new Lynu();
         _loc2_.name="clear";
         _loc2_.description="clears the console";
         var _loc3_:Lynu = new Lynu();
         _loc3_.name="exit";
         _loc3_.description="closes the console";
         var _loc4_:Lynu = new Lynu();
         _loc4_.name="copy";
         _loc4_.description="copies the contents of the console to the clipboard";
         this.register.dispatch(_loc1_,this.gyh);
         this.register.dispatch(_loc2_,this.gopydyh);
         this.register.dispatch(_loc3_,this.lajoquwu);
         this.register.dispatch(_loc4_,this.qupezihan);
         return;
      }
   }
[/CLASS]
}