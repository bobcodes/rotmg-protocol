package najilihak
{
   import nago.Vadotele;
   import potogi.Zuvu;


   public class Kov extends Object
   {
      public function Kov() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Vadotele;

      public var nihifoc:Tofud;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zuvu = null;
         _loc1_=new Zuvu();
         _loc1_.name="reskin";
         _loc1_.description="opens the reskin UI";
         this.register.dispatch(_loc1_,this.nihifoc);
         return;
      }
   }

}