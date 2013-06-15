package zin
{
   import vilova.Sukazys;
   import gycu.Feliro;
   import pusy.Novibovyg;
   import gycu.Befa;
   import gycu.Levoje;


   public class Qidyhugi extends Object
   {
      public function Qidyhugi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var wumi:Sukazys;

      public var bilizaw:Feliro;

      public var refresh:Novibovyg;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Befa = new Befa(this.wumi);
         _loc1_.dytunepos(new Levoje(this.refresh));
         this.bilizaw.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}