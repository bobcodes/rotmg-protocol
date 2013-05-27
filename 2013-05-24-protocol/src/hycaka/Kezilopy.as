package hycaka
{
   import nago.Vadotele;
   import potogi.Zuvu;


   public class Kezilopy extends Object
   {
      public function Kezilopy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Vadotele;

      public var setFocus:Ruh;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zuvu = null;
         _loc1_=new Zuvu();
         _loc1_.name="follow";
         _loc1_.description="follow a game object (by name)";
         this.register.dispatch(_loc1_,this.setFocus);
         return;
      }
   }

}