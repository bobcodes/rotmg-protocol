package pury
{
   import vilova.Boqadaq;
   import gycu.Feliro;
   import cizagamym.Lebovas;
   import hunavefeg.Depyrew;
   import gycu.Begotyl;
   import gycu.Levoje;


   public class Vowip extends Object
   {
      public function Vowip() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qetub:Boqadaq;

      public var bilizaw:Feliro;

      public var gimenakal:Lebovas;

      public var con:Depyrew;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.con.debug("execute");
         var _loc1_:Begotyl = new Begotyl();
         _loc1_.add(this.qetub);
         _loc1_.add(new Levoje(this.gimenakal));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}