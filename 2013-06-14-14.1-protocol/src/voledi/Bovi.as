package voledi
{
   import gycu.Feliro;


   public class Bovi extends Object
   {
      public function Bovi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var startup:Lazab;

      public var bilizaw:Feliro;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bilizaw.add(this.startup);
         this.startup.start();
         return;
      }
   }

}