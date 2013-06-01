package vysiluf
{
   import nago.Vadotele;
   import nago.Ryko;
   import nago.Meva;
   import nago.Wozope;
   import nago.Kukodyba;
   import potogi.Zuvu;


   public class Tigalej extends Object
   {
      public function Tigalej() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var register:Vadotele;

      public var rysizotuc:Ryko;

      public var virituqil:Meva;

      public var jomulypeq:Wozope;

      public var jequcy:Kukodyba;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Zuvu = null;
         _loc1_=new Zuvu();
         _loc1_.name="list";
         _loc1_.description="lists available console commands";
         var _loc2_:Zuvu = new Zuvu();
         _loc2_.name="clear";
         _loc2_.description="clears the console";
         var _loc3_:Zuvu = new Zuvu();
         _loc3_.name="exit";
         _loc3_.description="closes the console";
         var _loc4_:Zuvu = new Zuvu();
         _loc4_.name="copy";
         _loc4_.description="copies the contents of the console to the clipboard";
         this.register.dispatch(_loc1_,this.rysizotuc);
         this.register.dispatch(_loc2_,this.virituqil);
         this.register.dispatch(_loc3_,this.jomulypeq);
         this.register.dispatch(_loc4_,this.jequcy);
         return;
      }
   }

}