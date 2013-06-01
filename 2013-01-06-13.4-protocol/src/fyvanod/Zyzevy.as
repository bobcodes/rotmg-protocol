package fyvanod
{
[CLASS270]   import pigeguwo.Jazyv;
   import flash.display.Sprite;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Detys;
   import flash.display.Bitmap;
   import qypupet.Vuravipyg;
   import totuhare.Zufi;
   import qypupet.Juvudu;
   import kozaligov.Cinijyt;
   import qypupet.Zazeseca;
   import qypupet.Gucuqop;
   import kozaligov.Bapipe;
   import vinirudel.Heqodeno;


   public class Zyzevy extends Jazyv
   {
      public function Zyzevy(param1:Vuravipyg) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.petVO=param1;
         super(3552822,1,16777215,1,true);
         this.woqijanoj.name=Heqodeno.hihasitor;
         return;
      }

      private const woqijanoj:Sprite = new Sprite();

      private const vinuraj:Capitu = Bapipe.kejajaqyv(16777215,16,true);

      private const vebewidi:Capitu = Bapipe.kejajaqyv(11776947,12,false);

      private const ditiwoh:Capitu = Bapipe.kejajaqyv(11776947,12,false);

      private const jecy:Detys = Bapipe.wawe();

      private var dyvizi:Bitmap;

      private var petVO:Vuravipyg;

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyvizi=this.petVO.vobasyg();
         this.mipuguc();
         this.hiqagym();
         this.rabika();
         this.zawiqur();
         return;
      }

      private function zawiqur() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vinuraj.setStringBuilder(new Zufi().setParams(this.petVO.getName()));
         this.vebewidi.setStringBuilder(new Zufi().setParams(this.petVO.nyv()));
         this.ditiwoh.setStringBuilder(new Zufi().setParams(Juvudu.devucohul(this.petVO.qupohysy())));
         return;
      }

      private function mipuguc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.woqijanoj.graphics.beginFill(0,0.0);
         this.woqijanoj.graphics.drawRect(0,0,Cinijyt.qaryzuwov,Cinijyt.qed);
         this.woqijanoj.addChild(this.dyvizi);
         this.woqijanoj.addChild(this.vinuraj);
         this.woqijanoj.addChild(this.vebewidi);
         this.woqijanoj.addChild(this.ditiwoh);
         this.woqijanoj.addChild(this.jecy);
         addChild(this.woqijanoj);
         return;
      }

      private function hiqagym() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:uint = 0;
         var _loc3_:Zazeseca = null;
         var _loc4_:Qyt = null;
         var _loc2_:uint = 3;
         _loc1_=0;
         while(_loc1_<_loc2_)
         {
            _loc3_=this.petVO.wosyjuzed[_loc1_];
            _loc4_=new Qyt(_loc3_,174);
            _loc4_.x=8;
            _loc4_.y=86+17*_loc1_;
            this.woqijanoj.addChild(_loc4_);
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

      private function rabika() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vinuraj.x=55;
         this.vinuraj.y=21;
         this.vebewidi.x=55;
         this.vebewidi.y=35;
         this.ditiwoh.x=55;
         this.ditiwoh.y=48;
         return;
      }
   }
[/CLASS]
}