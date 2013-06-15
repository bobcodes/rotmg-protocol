package pak
{
   import ranu.Lynuz;
   import qowema.Sytyze;


   public class Nanahize extends Object
   {
      public function Nanahize() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var register:Lynuz;

      public var setFocus:Jote;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sytyze = null;
         _loc1_=new Sytyze();
         _loc1_.name="follow";
         _loc1_.description="follow a game object (by name)";
         this.register.dispatch(_loc1_,this.setFocus);
         return;
      }
   }

}