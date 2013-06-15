package poho
{
   import mukyrosu.Qanyduk;
   import kabam.rotmg.assets.model.Fip;


   public class Pom extends Object
   {
      public function Pom() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.state=Bul.NULL;
         super();
         return;
      }

      public const fow:Qanyduk = new Qanyduk(Pom);

      public var id:int = 0;

      public var name:String = "";

      public var unlockLevel:int;

      public var fegotu:Fip;

      public var cost:int;

      public var limited:Boolean = false;

      private var state:Bul;

      private var kami:Boolean;

      public function cosupeso() : Boolean {
         return this.kami;
      }

      public function gowek(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kami!=param1)
         {
            this.kami=param1;
            this.fow.dispatch(this);
         }
         return;
      }

      public function dukat() : Bul {
         return this.state;
      }

      public function setState(param1:Bul) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.state!=param1)
         {
            this.state=param1;
            this.fow.dispatch(this);
         }
         return;
      }
   }

}