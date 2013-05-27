package jedytoh
{
   import nago.Vadotele;
   import potogi.Zuvu;


   public class Cudu extends Object
   {
      public function Cudu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var lakif:Vadotele;

      public var lapy:Toqov;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zuvu = null;
         _loc1_=new Zuvu();
         _loc1_.name="setlang";
         _loc1_.description="Sets the locale language (defaults to en-US)";
         this.lakif.dispatch(_loc1_,this.lapy);
         return;
      }
   }

}