package cedakeqo
{
[CLASS1323]   import saveduw.Vetezilu;
   import syfuqycy.Totitig;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import dutes.Sycanetal;
   import syfuqycy.Zutus;
   import syfuqycy.Rewytoquk;
   import wohet.DeletingCharacterView;
   import syfuqycy.Nizus;
   import syfuqycy.Motumeq;
   import qilarag.CharacterSelectionAndNewsScreen;


   public class Jiwepavo extends Object
   {
      public function Jiwepavo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var pitegum:Vetezilu;

      public var peg:Totitig;

      public var lyhog:Hehuf;

      public var closeDialogs:Tiqimav;

      public var cucec:Sycanetal;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.lyhog,new DeletingCharacterView()));
         _loc1_.add(new Nizus(this.pitegum,this.husafy(),this.ryzucy()));
         this.peg.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function husafy() : Motumeq {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Zutus = new Zutus();
         _loc1_.add(new Rewytoquk(this.cucec,new CharacterSelectionAndNewsScreen()));
         _loc1_.add(new Rewytoquk(this.closeDialogs));
         return _loc1_;
      }

      private function ryzucy() : Motumeq {
         return new Rewytoquk(this.lyhog,"Unable to delete character");
      }
   }
[/CLASS]
}