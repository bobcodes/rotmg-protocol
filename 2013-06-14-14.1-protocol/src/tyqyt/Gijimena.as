package tyqyt
{
   import ranu.Lynuz;
   import ranu.Rycejoqom;
   import ranu.Fubyf;
   import ranu.Bivu;
   import ranu.Tihun;
   import qowema.Sytyze;


   public class Gijimena extends Object
   {
      public function Gijimena() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var register:Lynuz;

      public var qahomygob:Rycejoqom;

      public var tilyl:Fubyf;

      public var tobejo:Bivu;

      public var lybavywit:Tihun;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Sytyze = null;
         _loc1_=new Sytyze();
         _loc1_.name="list";
         _loc1_.description="lists available console commands";
         var _loc2_:Sytyze = new Sytyze();
         _loc2_.name="clear";
         _loc2_.description="clears the console";
         var _loc3_:Sytyze = new Sytyze();
         _loc3_.name="exit";
         _loc3_.description="closes the console";
         var _loc4_:Sytyze = new Sytyze();
         _loc4_.name="copy";
         _loc4_.description="copies the contents of the console to the clipboard";
         this.register.dispatch(_loc1_,this.qahomygob);
         this.register.dispatch(_loc2_,this.tilyl);
         this.register.dispatch(_loc3_,this.tobejo);
         this.register.dispatch(_loc4_,this.lybavywit);
         return;
      }
   }

}