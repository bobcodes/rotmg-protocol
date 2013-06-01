package fyvanod
{
[CLASS271]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import pudev.Capitu;
   import qypupet.Vuravipyg;
   import vinirudel.Heqodeno;
   import totuhare.Zufi;
   import qypupet.Gucuqop;
   import qypupet.Juvudu;
   import kozaligov.Bapipe;


   public class Tysusi extends Sprite
   {
      public function Tysusi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.woqijanoj=new Sprite();
         this.vebewidi=Bapipe.kejajaqyv(11776947,13,false);
         this.tukoliba=Bapipe.kejajaqyv(11776947,15,true);
         this.ditiwoh=Bapipe.kejajaqyv(11776947,13,false);
         super();
         return;
      }

      public var dyvizi:Bitmap;

      private var woqijanoj:Sprite;

      public var vebewidi:Capitu;

      private var tukoliba:Capitu;

      private var ditiwoh:Capitu;

      private var petVO:Vuravipyg;

      public function init(param1:Vuravipyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.petVO=param1;
         this.dyvizi=param1.vobasyg();
         this.mipuguc();
         this.hiqagym();
         this.rabika();
         this.zawiqur();
         this.woqijanoj.name=Heqodeno.hihasitor;
         param1.magoraqo.add(this.nunaduz);
         return;
      }

      private function nunaduz() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.havureho();
         this.vebewidi.setStringBuilder(new Zufi().setParams(this.petVO.nyv()));
         return;
      }

      private function havureho() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.woqijanoj.removeChild(this.dyvizi);
         this.dyvizi=this.petVO.vobasyg();
         this.woqijanoj.addChild(this.dyvizi);
         return;
      }

      private function hiqagym() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:uint = 0;
         var _loc3_:Qyt = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=new Qyt(this.petVO.wosyjuzed[_loc1_],171);
            _loc3_.x=3;
            _loc3_.y=72+17*_loc1_;
            this.woqijanoj.addChild(_loc3_);
            _loc1_++;
         }
         return;
      }

      private function ruhy() : uint {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.petVO.nyv()==Gucuqop.lavadak.value||this.petVO.nyv()==Gucuqop.fisowybe.value;
         if(_loc1_)
         {
            return 2;
         }
         return 3;
      }

      private function zawiqur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tukoliba.setStringBuilder(new Zufi().setParams(this.petVO.getName()));
         this.vebewidi.setStringBuilder(new Zufi().setParams(this.petVO.nyv()));
         this.ditiwoh.setStringBuilder(new Zufi().setParams(Juvudu.devucohul(this.petVO.qupohysy())));
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.woqijanoj.addChild(this.dyvizi);
         this.woqijanoj.addChild(this.tukoliba);
         this.woqijanoj.addChild(this.vebewidi);
         this.woqijanoj.addChild(this.ditiwoh);
         addChild(this.woqijanoj);
         return;
      }

      private function rabika() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dyvizi.x=this.dyvizi.x-8;
         this.dyvizi.y=this.dyvizi.y-1;
         this.woqijanoj.x=7;
         this.woqijanoj.y=6;
         this.tukoliba.x=45;
         this.tukoliba.y=20;
         this.vebewidi.x=45;
         this.vebewidi.y=33;
         this.ditiwoh.x=45;
         this.ditiwoh.y=47;
         return;
      }
   }
[/CLASS]
}