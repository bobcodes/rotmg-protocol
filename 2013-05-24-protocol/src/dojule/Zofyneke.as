package dojule
{
   import hotewa.Baqifa;
   import kabam.rotmg.assets.services.Cafe;
   import fulaw.Vihekivuc;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import kabam.rotmg.assets.model.Animation;


   public class Zofyneke extends Object
   {
      public function Zofyneke() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var muwi:Baqifa;

      public var factory:Cafe;

      public var sydo:Vihekivuc;

      private var puw:SavedCharacter;

      private var faranaji:Jimi;

      private var skin:Dasin;

      private var tex2:int;

      private var tex1:int;

      public function make() : Animation {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.puw=this.muwi.qamas(this.muwi.charId);
         this.faranaji=this.puw?this.defehyle():this.bogipywo();
         this.skin=this.faranaji.socucu.mipozilin();
         this.tex1=this.puw?this.puw.tex1():0;
         this.tex2=this.puw?this.puw.tex2():0;
         return this.factory.cegid(this.skin.ladewavaq,100,this.tex1,this.tex2);
      }

      private function bogipywo() : Jimi {
         return this.sydo.zega();
      }

      private function defehyle() : Jimi {
         return this.sydo.lyt(this.puw.objectType());
      }
   }

}