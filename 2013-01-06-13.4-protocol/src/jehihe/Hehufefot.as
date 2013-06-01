package jehihe
{
[CLASS80]   import vofepimy.Wogy;
   import syfuqycy.Totitig;
   import dutes.Vow;
   import kirofyny.Hehuf;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import syfuqycy.Rewytoquk;
   import qilarag.CharacterSelectionAndNewsScreen;
   import cejyva.ErrorDialog;


   public class Hehufefot extends Object
   {
      public function Hehufefot() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const tygid:String = "Unable to verify age";

      public var pitegum:Wogy;

      public var peg:Totitig;

      public var cucec:Vow;

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nizus = new Nizus(this.pitegum);
         _loc1_.hujufy(this.tisehi());
         _loc1_.haduqez(this.jumyqake());
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function tisehi() : Motumeq {
         return new Rewytoquk(this.cucec,new CharacterSelectionAndNewsScreen());
      }

      private function jumyqake() : Motumeq {
         return new Rewytoquk(this.lyhog,new ErrorDialog(this.tygid));
      }
   }
[/CLASS]
}