package put
{
[CLASS604]   import tysenyzy.Zovisis;
   import hiraj.Pegygyloj;
   import dage.Fakibis;
   import dutes.Sycanetal;
   import dutes.Mokyrag;
   import dutes.Vavaq;
   import fihela.Tyc;
   import kabam.rotmg.assets.services.Vohemija;
   import mywyvuryw.Kejubuveh;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.objects.Qeh;
   import com.company.assembleegameclient.util.Huroj;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import caqu.Jujadi;


   public class Mederobe extends Zovisis
   {
      public function Mederobe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:FameView;

      public var gebo:Pegygyloj;

      public var gusor:Fakibis;

      public var cucec:Sycanetal;

      public var tigis:Mokyrag;

      public var pukyso:Vavaq;

      public var pitegum:Tyc;

      public var factory:Vohemija;

      private var kapefib:Boolean;

      private var death:Kejubuveh;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.add(this.zykekulucy);
         this.pukyso.dispatch("/fame");
         this.nolor();
         this.febutok();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.remove(this.zykekulucy);
         this.view.noqugupo();
         this.pitegum.gegyco.removeAll();
         return;
      }

      private function nolor() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kapefib=this.gusor.wahirupom();
         this.view.gezurytol(this.kapefib);
         this.death=this.gusor.gituroq();
         if((this.death)&&(this.death.background))
         {
            this.view.gupocity(this.death.background);
         }
         return;
      }

      private function febutok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pitegum.accountId=this.gebo.accountId;
         this.pitegum.charId=this.gebo.vojokas;
         this.pitegum.gegyco.addOnce(this.nucor);
         this.pitegum.start();
         return;
      }

      private function nucor(param1:Tyc, param2:Boolean, param3:String="") : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:BitmapData = this.makeIcon();
         this.view.luvyvosek(param1.name,param1.level,param1.type);
         this.view.bume(param1.famogogez,param1.killer);
         this.view.setIcon(_loc4_);
         this.view.teferu(param1.qocyti,param1.xml);
         return;
      }

      private function makeIcon() : BitmapData {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.kapefib)&&(this.death.vez))
         {
            return this.nywovevy();
         }
         return this.bevykat();
      }

      private function bevykat() : BitmapData {
         return this.factory.makeIcon(this.pitegum.jaqyb,250,this.pitegum.texture1,this.pitegum.texture2);
      }

      private function nywovevy() : BitmapData {
         var _loc1_:Qeh = ObjectLibrary.kusuj[this.death.caga];
         var _loc2_:Huroj = _loc1_.haci;
         var _loc3_:Gejugut = _loc2_.imageFromDir(Huroj.RIGHT,Huroj.wyqel,0);
         return TextureRedrawer.resize(_loc3_.image_,_loc3_.mask_,250,true,this.pitegum.texture1,this.pitegum.texture2);
      }

      private function zykekulucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kapefib)
         {
            this.cucec.dispatch(new Jujadi());
         }
         else
         {
            this.tigis.dispatch();
         }
         return;
      }
   }
[/CLASS]
}