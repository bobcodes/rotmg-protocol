package fik
{
   import ranu.Lynuz;
   import qowema.Sytyze;


   public class Robij extends Object
   {
      public function Robij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var hyruhat:Lynuz;

      public var folocibe:Bokuqi;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sytyze = null;
         _loc1_=new Sytyze();
         _loc1_.name="setlang";
         _loc1_.description="Sets the locale language (defaults to en-US)";
         this.hyruhat.dispatch(_loc1_,this.folocibe);
         return;
      }
   }

}