package pujo
{
   import nago.Vadotele;
   import potogi.Zuvu;


   public class Qocasucy extends Object
   {
      public function Qocasucy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Vadotele;

      public var gykykerub:Havy;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zuvu = null;
         _loc1_=new Zuvu();
         _loc1_.name="caretaker";
         _loc1_.description="opens the pets caretaker query UI";
         this.register.dispatch(_loc1_,this.gykykerub);
         return;
      }
   }

}