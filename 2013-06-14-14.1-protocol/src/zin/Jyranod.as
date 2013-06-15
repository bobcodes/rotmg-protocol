package zin
{
   import vilova.Baf;
   import gycu.Feliro;
   import pusy.Novibovyg;
   import gycu.Befa;
   import gycu.Levoje;


   public class Jyranod extends Object
   {
      public function Jyranod() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var login:Baf;

      public var bilizaw:Feliro;

      public var refresh:Novibovyg;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.login);
         _loc1_.dytunepos(new Levoje(this.refresh));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}