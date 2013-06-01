package wociwa
{
[CLASS1322]   import nupuq.Kus;
   import zaw.Lynu;


   public class Lyvykejev extends Object
   {
      public function Lyvykejev() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Kus;

      public var panuvy:Samejutac;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lynu = null;
         _loc1_=new Lynu();
         _loc1_.name="reskin";
         _loc1_.description="opens the reskin UI";
         this.register.dispatch(_loc1_,this.panuvy);
         return;
      }
   }
[/CLASS]
}