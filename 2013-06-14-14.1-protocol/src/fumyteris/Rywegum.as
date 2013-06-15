package fumyteris
{
   import tytojonib.Kyjefe;
   import lyhek.Kumiri;
   import tygole.Govututa;
   import pomujukir.Bemivu;
   import pomujukir.Raqy;
   import pomujukir.Hygawulil;
   import qubycaheme.Ropopy;
   import kabam.rotmg.assets.services.Bytedif;
   import wipivyv.Memysoh;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.objects.Sep;
   import com.company.assembleegameclient.util.Jiqefatok;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import gudon.Rybapyj;


   public class Rywegum extends Kyjefe
   {
      public function Rywegum() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:FameView;

      public var nigazywej:Kumiri;

      public var vegah:Govututa;

      public var syfu:Bemivu;

      public var bunubuceg:Raqy;

      public var taja:Hygawulil;

      public var zop:Ropopy;

      public var factory:Bytedif;

      private var vemaniva:Boolean;

      private var death:Memysoh;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.add(this.nydegazeq);
         this.taja.dispatch("/fame");
         this.hapigy();
         this.datu();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.remove(this.nydegazeq);
         this.view.fugij();
         this.zop.byqato.removeAll();
         return;
      }

      private function hapigy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vemaniva=this.vegah.buhizo();
         this.view.hasosyf(this.vemaniva);
         this.death=this.vegah.vocafeq();
         if((this.death)&&(this.death.background))
         {
            this.view.qojedyna(this.death.background);
         }
         return;
      }

      private function datu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zop.accountId=this.nigazywej.accountId;
         this.zop.charId=this.nigazywej.medolaru;
         this.zop.byqato.addOnce(this.wabon);
         this.zop.start();
         return;
      }

      private function wabon(param1:Ropopy, param2:Boolean, param3:String="") : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:BitmapData = this.makeIcon();
         this.view.fomik(param1.name,param1.level,param1.type);
         this.view.mabogur(param1.bodin,param1.killer);
         this.view.setIcon(_loc4_);
         this.view.rapy(param1.tokanemi,param1.xml);
         return;
      }

      private function makeIcon() : BitmapData {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.vemaniva)&&(this.death.nequfiv))
         {
            return this.duk();
         }
         return this.ber();
      }

      private function ber() : BitmapData {
         return this.factory.makeIcon(this.zop.fegotu,250,this.zop.texture1,this.zop.texture2);
      }

      private function duk() : BitmapData {
         var _loc1_:Sep = ObjectLibrary.fyri[this.death.togo];
         var _loc2_:Jiqefatok = _loc1_.bisyfewyt;
         var _loc3_:Kebinuhi = _loc2_.imageFromDir(Jiqefatok.RIGHT,Jiqefatok.radev,0);
         return TextureRedrawer.resize(_loc3_.image_,_loc3_.mask_,250,true,this.zop.texture1,this.zop.texture2);
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vemaniva)
         {
            this.syfu.dispatch(new Rybapyj());
         }
         else
         {
            this.bunubuceg.dispatch();
         }
         return;
      }
   }

}